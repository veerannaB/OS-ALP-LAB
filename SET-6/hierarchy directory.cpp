#include<stdio.h>
struct st
{
char dname[10];
char sdname[10][10];
char fname[10][10][10];
int ds,sds;
}
dir[3];
main()
{ int i,j,k,n;
printf("enter number of directories : ");
scanf("%d",&n);
for(i=0;i<n;i++)
{
printf("enter directory %d name : ",i);
scanf("%s",&dir[i].dname);
printf("enter size of directory : ");
scanf("%d",&dir[i].ds);
for(j=0;j<dir[i].ds;j++)
{
printf("enter subdirectory name : ");
scanf("%s",dir[i].sdname[j]);
printf("enter subdirectory size : ");
scanf("%d",&dir[i].sds);
for(k=0;k<dir[i].sds;k++)
{
printf("enter filename : ");
scanf("%s",&dir[i].fname[j][k]);
}    }   }
printf("\n DIRNAME\t SIZE\t SUBDIRNAME \t SIZE\t FILES\n");
for(i=0;i<n;i++)
{
printf("%s\t\t%d",dir[i].dname,dir[i].ds);
for(j=0;j<dir[i].ds;j++)
{
printf("\t%s\t%d\t",dir[i].sdname[j],dir[i].sds);
for(k=0;k<dir[i].sds;k++)
printf("%s",dir[i].fname[j][k]);                           
 printf("\n\t");
}
printf("\n");
}
}