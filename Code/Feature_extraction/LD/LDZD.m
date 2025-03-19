    
function [out]=LDZD(quik)
    F=quik;
    FF=LDtransform(F);
    Fasta=LDfen(FF);
    Fasta1=LD1D(Fasta);
    Fasta2=LD2D(Fasta);
    Fasta3=LD3D(Fasta);
    out=[Fasta1,Fasta2,Fasta3];
end