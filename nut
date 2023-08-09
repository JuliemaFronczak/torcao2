/*--------------------------------*- C++ -*----------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  6
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    location    "0";
    object      nut;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -1 0 0 0 0];

internalField   uniform 0.00671;//0.06616;

boundaryField
{
    inlet
    {
        type            calculated;
        value           uniform 0.00671;//0.06616;
    }
    outlet
    {
        type            zeroGradient;
    }
    walls
    {
        type            nutkWallFunction;
        value           uniform 0.00671;//0.06616;
    }
    topbottom
    {
        type            calculated;
        value           uniform 0.00671;//0.06616;
    }
    frontback
    {
        type            empty;
    }
}


// ************************************************************************* //
