#include <stdio.h>
#include <assert.h>
#include "libasm.h"
#include <ctype.h>
#include <stdlib.h>
#include <unistd.h>

void	tests_strlen()
{
	char *test_str[4] = {
		"1\n\n\n 4",
		"",
		"12345",
		NULL
	};

	for (int i = 0; test_str[i] != NULL; i++)
		assert(ft_strlen(test_str[i]) == strlen(test_str[i]));
}

void tests_isdigit()
{
	char *test_str = "01234dfsaQD\x002";

	for (int i = 0; test_str[i]; i++)
		assert(ft_isdigit(test_str[i]) == isdigit(test_str[i]));
}	

void tests_memset()
{
	char *s1 = malloc(5);
	char *s2 = malloc(5);
	int sym = 48;

	if (memcmp(ft_memset(s1, sym, 5), memset(s2, sym, 5), 5) != 0) {
		fprintf(stderr, "ft_memset: error: %s != %s\n", s1, s2);
		exit(1);
	}
}

void tests_bzero()
{
	char s1[5] = {0};
	char s2[5] = "1234";
	
	ft_bzero(s2, 5);
	assert(!memcmp(s2, s1, 5));
}

void tests_memcpy()
{
	char s1[5] = "12345";
	char s2[5] = {0};

	assert(!memcmp(ft_memcpy(s2, s1, 5), s1, 5));
}

int main()
{
	tests_strlen();
	tests_isdigit();
	tests_memset();
	tests_bzero();
	tests_memcpy();
	printf("All tests passed!\n");
	return 0;
}
