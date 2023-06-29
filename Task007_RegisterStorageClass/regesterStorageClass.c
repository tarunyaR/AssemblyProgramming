#include <stdio.h>
void func2(int iNo5, int iNo6)
{
	register int iNo7=190;
	register int iNo8=170;
	printf("%d %d %d %d",iNo5,iNo6,iNo7,iNo8);
}
void func(int iNo5, int iNo6)
{
	register int iNo7=90;
	register int iNo8=70;
	printf("%d %d %d %d",iNo5,iNo6,iNo7,iNo8);
func(iNo7,iNo8);
func2(iNo7,iNo8);
}

int main(void)
{

	register int iNo1=10;
	register int iNo2=20;
	register  int iNo3=30;
	register  int iNo4=40;
register  int iNo5=140;
	printf("%d %d %d %d %d",iNo1,iNo2,iNo3,iNo4,iNo5);
	func(iNo1,iNo2);
	return 0;
}
