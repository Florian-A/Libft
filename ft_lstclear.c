/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: f██████ <f██████@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/02 16:09:35 by f██████           #+#    #+#             */
/*   Updated: 2021/11/22 10:27:59 by f██████          ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*lst1;
	t_list	*lst2;

	if (!lst || !del)
		return ;
	lst1 = *lst;
	while (lst1)
	{
		lst2 = lst1->next;
		ft_lstdelone(lst1, del);
		lst1 = lst2;
	}
	*lst = NULL;
}
