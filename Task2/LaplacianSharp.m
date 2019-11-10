function M = LaplacianSharp(img)
    filter = [0,-1,0; -1,5,-1; 0,-1,0];
    M =LinearFilter(img, filter,"cutoff");

end