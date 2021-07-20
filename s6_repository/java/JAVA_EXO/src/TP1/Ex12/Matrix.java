package TP1.Ex12;

public class Matrix {

    private final double[][] tab;
    private final int[] dim;

    //region constructors
    public Matrix(int nbrRows, int nbrColumns){
        tab = new double[nbrRows][nbrColumns];
        dim = new int[] {nbrRows, nbrColumns};
    }

    public Matrix(int[][] t){
        int y = t.length;
        int x = maxColumn(t);
        dim = new int[] {y, x};
        tab = new double[y][x];

        setMatrix(t);
    }
    //endregion

    //region getters

    public double[][] getTab() {
        return tab;
    }

    public int[] getDim() {
        return dim;
    }

    public int getDim(int i) {
        return dim[i];
    }

    //endregion

    //region exercice

    public static Matrix add(Matrix a, Matrix b)  {
        Matrix res;

        // getDim (0) c'est le nombre de lignes
        // getDim (1) c'est le nombre de colonnes
        // getTab () c'est le tableau de la matrice
        //check if dim(a) == dim(b)
        boolean isOk = a.getDim(0) == b.getDim(0) && a.getDim(1) == b.getDim(1);
        if(isOk){
            //créer une matrice avec la même dimension de a (ou b)
            res = new Matrix(a.getDim(0), a.getDim(1));
            for(int j = 0; j < a.getDim(0); j++){
                for(int i = 0; i < a.getDim(1); i++)
                    res.getTab()[j][i] = a.getTab()[j][i] + b.getTab()[j][i];
            }
            return res;
        }else{
            throw new RuntimeException("dim(a) != dim(b)");
        }
    }

    public static Matrix mulReel(Matrix a, double b){
        Matrix res;

        // getDim (0) c'est le nombre de lignes
        // getDim (1) c'est le nombre de colonnes
        // getTab () c'est le tableau de la matrice
        res = new Matrix(a.getDim(0), a.getDim(1));
        for(int j = 0; j < a.getDim(0); j++){
            for(int i = 0; i < a.getDim(1); i++){
                res.getTab()[j][i] = a.getTab()[j][i] * b;
            }
        }

        return res;
    }

    public static Matrix transpose(Matrix a){
        Matrix res;

        // getDim (0) c'est le nombre de lignes
        // getDim (1) c'est le nombre de colonnes
        // getTab () c'est le tableau de la matrice
        res = new Matrix(a.getDim(1), a.getDim(0));
        for(int j = 0; j < a.getDim(0); j++){
            for(int i = 0; i < a.getDim(1); i++){
                res.getTab()[i][j] = a.getTab()[j][i];
            }
        }
        return res;
    }

    public static Matrix mul(Matrix a, Matrix b){
        Matrix res;

        // getDim (0) c'est le nombre de lignes
        // getDim (1) c'est le nombre de colonnes
        // getTab () c'est le tableau de la matrice
        // check if le nombre de columns de a == le nombre de lines de b
        boolean isOk = a.getDim(1) == b.getDim(0);
        if(isOk){
            res = new Matrix(a.getDim(0), b.getDim(1));
            for(int i = 0; i < a.getDim(0); i++){
                for(int j = 0; j < b.getDim(1); j++){
                    for(int k = 0; k < a.getDim(1); k++){
                        res.getTab()[i][j] += a.getTab()[i][k] * b.getTab()[k][j];
                    }
                }
            }
            return res;
        }else{
            throw new RuntimeException("nbrColumns(a) != nbrRows(b)");
        }
    }

    //endregion

    //region SET
    public void setItem(int x, int y, int value){
        tab[x][y] = value;
    }

    public void setColumn(int columnIndex, int[] column){
        int min = Math.min(column.length, dim[0]);
        for(int i = 0; i < min; i++)
            tab[i][columnIndex] = column[i];
    }

    public void setRow(int rowIndex, int[] row){
        int min = Math.min(row.length, dim[1]);
        for(int i = 0; i < min; i++)
            tab[rowIndex][i] = row[i];

    }

    public void setMatrix(int[][] t){
        int min = Math.min(t.length, dim[0]);
        for(int i = 0; i < min; i++)
            setRow(i, t[i]);
    }
    //endregion

    //region Print
    public void print(){
        for(int y = 0; y < dim[0]; y++){
            for(int x = 0; x < dim[1]; x++){
                System.out.print(tab[y][x]);
                if(x < dim[1] - 1)
                    System.out.print("\t");
            }
            System.out.println();
        }
    }

    public void print(String name){
        System.out.println(name);
        print();
    }

    //endregion

    //region private Methods

    private int maxColumn(int[][] t){
        int max = 0;
        for (int[] ints : t) {
            if (max < ints.length)
                max = ints.length;
        }
        return max;
    }

    //endregion

}
