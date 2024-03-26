package com.zplzh.springbootmybatisplus;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;

import java.io.*;

public class JSONProcessing {
    public static void main(String[] args) {
        try {
            // 读取文本文件
            String filePath = "职业推荐数据.txt";
            String fileContent = readFile(filePath);

            // 解析为 JSON 对象
            JSONObject jsonData = JSON.parseObject(fileContent, Feature.OrderedField);

            // 修改 JSON 结构并保留指定字段
            JSONObject modifiedData = modifyAndFilter(jsonData);

            // 保存到文件
            saveToFileWithoutQuotes(modifiedData.toJSONString(), "职业推荐数据表.txt");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private static JSONObject modifyAndFilter(JSONObject jsonData) {
        // 创建新的 JSON 对象
        JSONObject modifiedData = new JSONObject();
        modifiedData.put("zpData", modifyJobList(jsonData.getJSONObject("zpData").getJSONArray("jobList")));

        return modifiedData;
    }

    private static JSONArray modifyJobList(JSONArray jobList) {
        JSONArray modifiedJobList = new JSONArray();
        for (int i = 0; i < jobList.size(); i++) {
            JSONObject job = jobList.getJSONObject(i);
            JSONObject modifiedJob = new JSONObject();
            modifiedJob.put("post", job.getString("jobName"));
            String base = job.getString("cityName") + "·" + job.getString("areaDistrict") + "·" + job.getString("businessDistrict");
            modifiedJob.put("base", base);
            modifiedJob.put("company", job.getString("brandName"));
            modifiedJob.put("icon", job.getString("brandLogo"));
            modifiedJob.put("isb", false);
            modifiedJob.put("b", "热招");
            modifiedJob.put("tag", job.getJSONArray("jobLabels"));
            modifiedJob.put("salary", job.getString("salaryDesc"));
            modifiedJobList.add(modifiedJob);
        }
        return modifiedJobList;
    }

    private static String readFile(String filePath) throws IOException {
        StringBuilder content = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new FileReader(filePath))) {
            String line;
            while ((line = reader.readLine()) != null) {
                content.append(line).append("\n");
            }
        }
        return content.toString();
    }

    private static void saveToFileWithoutQuotes(String content, String filePath) throws IOException {
        content = content.replaceAll("\"(\\w+)\":", "$1:"); //去除属性的引号
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true))) {
            writer.write(content);
            writer.newLine();
        }
    }
}
