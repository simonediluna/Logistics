set nodes;
set origin_nodes within {nodes};
set destination_nodes within {nodes};
set not_origin_nodes = nodes diff origin_nodes;
set not_destination_nodes = nodes diff destination_nodes;
set links within (nodes cross nodes);

param fixed_costs {links};
param var_costs {links};
param capacities {links};
param balances {nodes};

var flows {links} >= 0;
var activated {links} binary;

minimize tot_cost: 
	sum {(i,j) in links} fixed_costs[i,j] * activated[i,j] + sum {(i,j) in links} var_costs[i,j] * flows[i,j];

subject to flow_cons_constr {i in nodes}:
	sum {(j,i) in links} flows[j,i] - sum {(i,k) in links} flows[i,k] - balances[i] == 0;

subject to capacity_constr {(i,j) in links}:
	flows[i,j] - capacities[i,j] * activated[i,j] <= 0;
	
subject to unique_incoming_constr {i in not_origin_nodes}:
	sum {(j,i) in links} activated[j,i] - 1 <= 0; 

subject to unique_outgoing_constr {i in not_destination_nodes}:
	sum {(i,j) in links} activated[i,j] - 1 <= 0;