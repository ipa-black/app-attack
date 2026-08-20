package org.apache.mina.examples.netcat;

import java.io.PrintStream;
import java.net.InetSocketAddress;
import org.apache.mina.io.socket.SocketConnector;
/* loaded from: classes4.dex */
public class Main {
    static /* synthetic */ Class class$org$apache$mina$examples$netcat$Main;

    public static void main(String[] strArr) throws Exception {
        if (strArr.length != 2) {
            PrintStream printStream = System.out;
            StringBuffer stringBuffer = new StringBuffer();
            Class cls = class$org$apache$mina$examples$netcat$Main;
            if (cls == null) {
                cls = class$("org.apache.mina.examples.netcat.Main");
                class$org$apache$mina$examples$netcat$Main = cls;
            }
            printStream.println(stringBuffer.append(cls.getName()).append(" <hostname> <port>").toString());
            return;
        }
        new SocketConnector().connect(new InetSocketAddress(strArr[0], Integer.parseInt(strArr[1])), 60, new NetCatProtocolHandler());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }
}
