/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yasmail <yasmail@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/07/15 13:20:37 by yasmail           #+#    #+#             */
/*   Updated: 2025/07/19 15:30:02 by yasmail          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memchr(const void *s, int c, size_t n)
{
	char				word;
	size_t				i;
	const unsigned char	*res;
	void				*resu;

	word = c;
	res = (const unsigned char *)s;
	resu = NULL;
	i = 0;
	while (i < n)
	{
		if (res[i] == (unsigned char)c)
		{
			resu = (void *)(res + i);
			break ;
		}
		i++;
	}
	return (resu);
}
