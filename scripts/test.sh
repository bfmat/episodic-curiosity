#!/bin/sh
python -m episodic_curiosity.train_policy --num_timesteps=20000000 --workdir=/u/bfmat/ec_results/ppo_plus_eco/verysparse/run_number_1 --env_name=atari:Breakout-v0 --action_set= --num_env=12 --r_checkpoint= --gin_bindings RNetworkTrainer.observation_history_size=60000 --gin_bindings similarity_to_memory.similarity_aggregation=\"percentile\" --gin_bindings EpisodicMemory.replacement=\"random\" --gin_bindings CuriosityEnvWrapper.scale_surrogate_reward=0.0301724137931 --gin_bindings train.ent_coef=0.00205352502646 --gin_bindings EpisodicMemory.capacity=200 --gin_bindings create_environments.online_r_training=True --gin_bindings CuriosityEnvWrapper.scale_task_reward=1.0 --gin_bindings CuriosityEnvWrapper.exploration_reward_min_step=60000 --gin_bindings RNetworkTrainer.training_interval=-1 --gin_bindings RNetworkTrainer.num_epochs=10
