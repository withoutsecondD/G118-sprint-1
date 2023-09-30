package db;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import models.Task;

public class DbManager {
    private static List<Task> tasks = new ArrayList<>();

    private static Long id = 1L;

    public static void addTask(Task task) {
        task.setId(id);
        tasks.add(task);
        id++;
    }

    public static List<Task> getTasks() {
        return tasks;
    }

    public static Task getTaskById(Long id) {
        return tasks.stream()
                .filter(task -> Objects.equals(id, task.getId()))
                .findFirst()
                .orElse(null);
    }

    public static void deleteTaskById(Long id) {
        tasks.removeIf(task -> Objects.equals(id, task.getId()));
    }
}