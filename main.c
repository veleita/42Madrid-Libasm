/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mzomeno- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/13 16:34:17 by mzomeno-          #+#    #+#             */
/*   Updated: 2020/08/19 17:00:41 by mzomeno-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include "libasm.h"

int	main()
{
	char	*string = "todo bien hasta que";
	char	*string2 = "todo bien hasta que ups";
	int		fd = 0;
	char	*buf = (char*)malloc(20 * sizeof(char));

	printf("STRLEN:\n");
	printf("Mine: %lu\n", ft_strlen(string));
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
	printf("Mine: %s\n", ft_strdup(string));
	printf("Real: %s\n\n", strdup(string));

	printf("READ:\n");
	printf("Please, write something\n");
	printf("Mine: %zd\n", ft_read(fd, buf, 7));
	printf("Now write the same thing\n");
	printf("Real: %zd\n\n", read(fd, buf, 7));
	printf("\n----------------TEST COMPLETED----------------\n");
	return (0);
}
