/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mzomeno- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/13 16:34:17 by mzomeno-          #+#    #+#             */
/*   Updated: 2020/08/22 17:00:09 by mzomeno-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <fcntl.h>
#include "libasm.h"

int	main()
{
	char	*string = "todo bien hasta que";
	char	*string2 = "todo bien hasta que ups";
	int		fd = open("test", O_RDONLY);
	char	*buf = (char*)malloc(20 * sizeof(char));

	printf("STRLEN:\n");
	printf("Mine: %d\n", ft_strlen(string));
	printf("Real: %lu\n\n", strlen(string));

	printf("STRCPY:\n");
	printf("Mine: %s\n", ft_strcpy(buf, string));
	printf("Real: %s\n\n", strcpy(buf, string));

	printf("STRCMP:\n");
	printf("Mine: %s\n", ft_strcmp(string, string2) == 0 ? "Equal" : "Not equal");
	printf("Real: %s\n\n", strcmp(string, string2) == 0 ? "Equal" : "Not equal");

	printf("WRITE:\n");
	ft_write(1, "Mine: ", 6);
	ft_write(1, string, ft_strlen(string));
	printf("\n");
	ft_write(1, "Real: ", 6);
	write(1, string, strlen(string));
	printf("\n\n");

	printf("STRDUP:\n");
	char	*str = ft_strdup(string);
	printf("Mine: %s\n", str);
	free(str);
	str = strdup(string);
	printf("Real: %s\n\n", str);
	free(str);

	printf("READ:\n");
	printf("Reading test file...\n");
	printf("Mine: %d\n", ft_read(fd, buf, 7));
	printf("Reading test file...\n");
	printf("Real: %zd\n\n", read(fd, buf, 7));
	printf("\n----------------TEST COMPLETED----------------\n");
	return (0);
}
