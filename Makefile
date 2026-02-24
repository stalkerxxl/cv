# Сжатие всей истории коммитов в один "Initial commit"
# ВНИМАНИЕ: Это действие необратимо и перезаписывает историю в удаленном репозитории!
squash-history:
	@echo "Начинаю сжатие истории коммитов..."
	git checkout --orphan temp_branch
	git add -A
	git commit -m "Initial commit"
	git branch -D main
	git branch -m main
	git push -f origin main
	@echo "История успешно сжата и отправлена в origin main."

.PHONY: squash-history
