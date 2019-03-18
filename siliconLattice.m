ClearAll["Global`*"]

(* plot parameters *)
diskSize = 0.05;
is = 300;
numberOfCells = 3;

(* primitive vectors *)
a0 = 1;
a1 = FullSimplify[a0/2*{0, 1, 1}];
a2 = FullSimplify[a0/2*{1, 0, 1}];
a3 = FullSimplify[a0/2*{1, 1, 0}];
b1 = FullSimplify[a0/2*{0, 1, 1}];
b2 = FullSimplify[a0/2*{0, 1, 1}];
b3 = FullSimplify[a0/2*{0, 1, 1}];

(*locations of atoms in primitive unit cell*)
unitCellPoints = a0/2*{
    {0, 0, 0},
    {1, 0, 0},
    {0, 1, 0},
    {0, 0, 1},
    {1, 1, 1},
    {0, 1, 1},
    {1, 0, 1},
    {1, 1, 0},
    {0, 0.5, 0.5},
    {0.5, 0, 0.5},
    {0.5, 0.5, 0},
    {1, 0.5, 0.5},
    {0.5, 1, 0.5},
    {0.5, 0.5, 1},
    {0.25, 0.25, 0.25},
    {0.25, 0.75, 0.75},
    {0.75, 0.25, 0.75},
    {0.75, 0.75, 0.25}};

(* create unit cell *)
unitCell[x_, y_, z_] :=
 {Table[{Sphere[unitCellPoints[[i]], diskSize]}, {i, 1, Length[unitCellPoints]}],
  {Tube[{unitCellPoints[[1]], unitCellPoints[[15]]}]},
  {Tube[{unitCellPoints[[15]], unitCellPoints[[9]]}]},
  {Tube[{unitCellPoints[[15]], unitCellPoints[[10]]}]},
  {Tube[{unitCellPoints[[15]], unitCellPoints[[11]]}]},
  {Tube[{unitCellPoints[[6]], unitCellPoints[[16]]}]},
  {Tube[{unitCellPoints[[16]], unitCellPoints[[9]]}]},
  {Tube[{unitCellPoints[[16]], unitCellPoints[[13]]}]},
  {Tube[{unitCellPoints[[16]], unitCellPoints[[14]]}]},
  {Tube[{unitCellPoints[[7]], unitCellPoints[[17]]}]},
  {Tube[{unitCellPoints[[17]], unitCellPoints[[10]]}]},
  {Tube[{unitCellPoints[[17]], unitCellPoints[[12]]}]},
  {Tube[{unitCellPoints[[17]], unitCellPoints[[14]]}]},
  {Tube[{unitCellPoints[[8]], unitCellPoints[[18]]}]},
  {Tube[{unitCellPoints[[18]], unitCellPoints[[11]]}]},
  {Tube[{unitCellPoints[[18]], unitCellPoints[[12]]}]},
  {Tube[{unitCellPoints[[18]], unitCellPoints[[13]]}]}}

Export[NotebookDirectory[] <> "siUnitCell.png", Graphics3D[unitCell[0, 0, 0], ImageSize -> is]]
