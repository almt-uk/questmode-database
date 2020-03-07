
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_a_question` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE NO ACTION;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `fk_p_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `player_answers`
--
ALTER TABLE `player_answers`
  ADD CONSTRAINT `fk_pa_answers` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`answer_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_pa_questions` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_pa_quizz_sessions` FOREIGN KEY (`quizz_session_id`) REFERENCES `quizz_session` (`quizz_session_id`) ON DELETE NO ACTION;

--
-- Constraints for table `player_items`
--
ALTER TABLE `player_items`
  ADD CONSTRAINT `fk_pi_items` FOREIGN KEY (`item_id`) REFERENCES `items` (`itemid`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_pi_players` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`) ON DELETE NO ACTION;

--
-- Constraints for table `player_skills`
--
ALTER TABLE `player_skills`
  ADD CONSTRAINT `fk_ps_players` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_ps_skills` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`skill_id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_que_quizz` FOREIGN KEY (`quizz_id`) REFERENCES `quizzes` (`quizz_id`) ON DELETE NO ACTION;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `fk_q_users` FOREIGN KEY (`creator_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION;

--
-- Constraints for table `quizz_session`
--
ALTER TABLE `quizz_session`
  ADD CONSTRAINT `fk_qs_quizzes` FOREIGN KEY (`quizz_id`) REFERENCES `quizzes` (`quizz_id`) ON DELETE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_u_instituion` FOREIGN KEY (`institution_id`) REFERENCES `educational_institutions` (`institution_id`) ON DELETE NO ACTION;
