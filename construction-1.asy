if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="construction-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.outformat = "pdf";
size(8cm);

// Define vertices for outer triangle ADE
pair D = (0,0);
pair E = (6,0);
pair A = (1.5,4);

// Choose B on AD and C on AE such that ABC is similar to ADE
real scale = 0.6; // scaling factor for inner triangle
pair B = A + scale*(D - A);
pair C = A + scale*(E - A);

// Draw outer triangle ADE
draw(D--A--E--cycle, black+1pt);

// Draw inner triangle ABC
draw(A--B--C--cycle, black+1pt);

// Label segments
label("$1$", (A+B)/2, S); // BC = 1
label("$a$", (A+C)/2, NE); // AC = a
label("$b$", (A+D)/2, NW); // AD = b
label("$ab$", (A+E)/2, NE); // AE = ab


