/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mzomeno- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/15 17:00:33 by mzomeno-          #+#    #+#             */
/*   Updated: 2020/08/19 14:20:51 by mzomeno-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

int		ft_strlen(char*);
int		ft_read(int fd, void *buf, size_t nbyte);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strcpy(char *dest, const char *src);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);
char	*ft_strdup(const char *s);

#endif
