set nodes;
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