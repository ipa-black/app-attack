package org.apache.mina.examples.httpserver;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.util.Map;
import java.util.TreeMap;
import org.apache.mina.io.IoSession;
import org.apache.mina.io.handler.StreamIoHandler;
/* loaded from: classes4.dex */
public class HttpProtocolHandler extends StreamIoHandler {
    @Override // org.apache.mina.io.handler.StreamIoHandler
    protected void processStreamIo(IoSession ioSession, InputStream inputStream, OutputStream outputStream) {
        new Worker(inputStream, outputStream).start();
    }

    /* loaded from: classes4.dex */
    private static class Worker extends Thread {
        private final InputStream in;
        private final OutputStream out;

        public Worker(InputStream inputStream, OutputStream outputStream) {
            setDaemon(true);
            this.in = inputStream;
            this.out = outputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            TreeMap treeMap = new TreeMap();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.in));
            PrintWriter printWriter = new PrintWriter(new BufferedWriter(new OutputStreamWriter(this.out)));
            try {
                try {
                    String str = bufferedReader.readLine().split(" ")[1];
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null || readLine.equals("")) {
                            break;
                        }
                        String[] split = readLine.split(": ");
                        treeMap.put(split[0], split[1]);
                    }
                    printWriter.println("HTTP/1.0 200 OK");
                    printWriter.println("Content-Type: text/html");
                    printWriter.println("Server: MINA Example");
                    printWriter.println();
                    printWriter.println("<html><head></head><body>");
                    printWriter.println(new StringBuffer().append("<h3>Request Summary for: ").append(str).append("</h3>").toString());
                    printWriter.println("<table border=\"1\"><tr><th>Key</th><th>Value</th></tr>");
                    for (Map.Entry entry : treeMap.entrySet()) {
                        printWriter.println(new StringBuffer().append("<tr><td>").append(entry.getKey()).append("</td><td>").append(entry.getValue()).append("</td></tr>").toString());
                    }
                    printWriter.println("</table>");
                    printWriter.println("</body></html>");
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                }
            } finally {
                printWriter.flush();
                printWriter.close();
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
            }
        }
    }
}
