#ifndef D3Q15_SF_DEFS
#define D3Q15_SF_DEFS


__device__ __noinline__ void sf_x(Node *current_node, Lattice *lattice)
{
	// Find target index
	int target_ixd = (current_node->coord[0]+1)+current_node->coord[1]*domain_constants.length[0]+current_node->coord[2]*domain_constants.length[0]*domain_constants.length[1];

	// unknowns: 1,7,9,11,13
	current_node->f[1] = lattice->f_prev[1][target_ixd];
	current_node->f[7] = lattice->f_prev[7][target_ixd];
	current_node->f[9] = lattice->f_prev[9][target_ixd];
	current_node->f[11] = lattice->f_prev[11][target_ixd];
	current_node->f[13] = lattice->f_prev[13][target_ixd];
}

__device__ __noinline__ void sf_X(Node *current_node, Lattice *lattice)
{
	// Find target index
	int target_ixd = (current_node->coord[0]-1)+current_node->coord[1]*domain_constants.length[0]+current_node->coord[2]*domain_constants.length[0]*domain_constants.length[1];

	// unknowns: 2,8,10,12,14
	current_node->f[2] = lattice->f_prev[2][target_ixd];
	current_node->f[8] = lattice->f_prev[8][target_ixd];
	current_node->f[10] = lattice->f_prev[10][target_ixd];
	current_node->f[12] = lattice->f_prev[12][target_ixd];
	current_node->f[14] = lattice->f_prev[14][target_ixd];
}

__device__ __noinline__ void sf_y(Node *current_node, Lattice *lattice)
{
	// Find target index
	int target_ixd = current_node->coord[0]+(current_node->coord[1]+1)*domain_constants.length[0]+current_node->coord[2]*domain_constants.length[0]*domain_constants.length[1];

	// unknowns: 3,7,9,12,14
	current_node->f[3] = lattice->f_prev[3][target_ixd];
	current_node->f[7] = lattice->f_prev[7][target_ixd];
	current_node->f[9] = lattice->f_prev[9][target_ixd];
	current_node->f[12] = lattice->f_prev[12][target_ixd];
	current_node->f[14] = lattice->f_prev[14][target_ixd];
}

__device__ __noinline__ void sf_Y(Node *current_node, Lattice *lattice)
{
	// Find target index
	int target_ixd = current_node->coord[0]+(current_node->coord[1]-1)*domain_constants.length[0]+current_node->coord[2]*domain_constants.length[0]*domain_constants.length[1];

	// unknowns: 4,8,10,11,13
	current_node->f[4] = lattice->f_prev[4][target_ixd];
	current_node->f[8] = lattice->f_prev[8][target_ixd];
	current_node->f[10] = lattice->f_prev[10][target_ixd];
	current_node->f[11] = lattice->f_prev[11][target_ixd];
	current_node->f[13] = lattice->f_prev[13][target_ixd];
}

__device__ __noinline__ void sf_z(Node *current_node, Lattice *lattice)
{
	// Find target index
	int target_ixd = current_node->coord[0]+current_node->coord[1]*domain_constants.length[0]+(current_node->coord[2]+1)*domain_constants.length[0]*domain_constants.length[1];

	// unknowns: 5,7,10,11,14
	current_node->f[5] = lattice->f_prev[5][target_ixd];
	current_node->f[7] = lattice->f_prev[7][target_ixd];
	current_node->f[10] = lattice->f_prev[10][target_ixd];
	current_node->f[11] = lattice->f_prev[11][target_ixd];
	current_node->f[14] = lattice->f_prev[14][target_ixd];
}

__device__ __noinline__ void sf_Z(Node *current_node, Lattice *lattice)
{
	// Find target index
	int target_ixd = current_node->coord[0]+current_node->coord[1]*domain_constants.length[0]+(current_node->coord[2]-1)*domain_constants.length[0]*domain_constants.length[1];

	// unknowns: 6,8,9,12,13
	current_node->f[6] = lattice->f_prev[6][target_ixd];
	current_node->f[8] = lattice->f_prev[8][target_ixd];
	current_node->f[9] = lattice->f_prev[9][target_ixd];
	current_node->f[12] = lattice->f_prev[12][target_ixd];
	current_node->f[13] = lattice->f_prev[13][target_ixd];
}

#endif
