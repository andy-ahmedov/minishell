/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   z_mini_pipe_utils.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fnochiza <fnochiza@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/05 18:36:44 by fnochiza          #+#    #+#             */
/*   Updated: 2023/03/16 15:03:09 by fnochiza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/minishell.h"

void	std_out_close(int save_stdout)
{
	close(0);
	dup2(save_stdout, 0);
	close(save_stdout);
}

void	pipe_close(t_cmd *cmd, int fd0, int fd1)
{
	if (cmd->next)
	{
		dup2(fd0, 0);
		close(fd0);
		close(fd1);
	}
}

void	free_pipe_struct(t_exec *exec)
{
	if (exec->path_cmd)
		free_array(exec->path_cmd);
	if (exec->cmd_full)
		free_array(exec->cmd_full);
	if (exec->env)
		free_array(exec->env);
}
