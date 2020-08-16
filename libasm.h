/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmarti <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/08/14 16:26:47 by mmarti            #+#    #+#             */
/*   Updated: 2020/08/14 20:15:48 by mmarti           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <string.h>

size_t	ft_strlen(const char *s);
int		ft_isdigit(int c);
void	*ft_memset(void *b, int c, size_t len);
void	ft_bzero(void *b, size_t len);
void	*ft_memcpy(void *b, const void *src, size_t len);
char	*ft_strdup(const char *s);
char	*ft_strcat(char *dst, const char *src);
void    ft_cat(int fd);

#endif
