/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: secros <secros@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/09 17:36:35 by secros            #+#    #+#             */
/*   Updated: 2024/11/09 18:09:06 by secros           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*fs;
	size_t	len1;
	size_t	len2;

	len1 = ft_strlen(s1);
	len2 = ft_strlen(s2);
	fs = (char *) malloc(sizeof(char) * (len1 + len2 + 1));
	if (!fs)
		return (NULL);
	ft_strlcat(fs, s2, (ft_strlcpy(fs, s1, len1 + 1) + len2 + 1));
	return (fs);
}
