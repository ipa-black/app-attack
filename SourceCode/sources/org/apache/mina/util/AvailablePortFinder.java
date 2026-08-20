package org.apache.mina.util;

import java.io.IOException;
import java.net.DatagramSocket;
import java.net.ServerSocket;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes5.dex */
public class AvailablePortFinder {
    public static final int MAX_PORT_NUMBER = 49151;
    public static final int MIN_PORT_NUMBER = 1;

    private AvailablePortFinder() {
    }

    public static Set getAvailablePorts() {
        return getAvailablePorts(1, MAX_PORT_NUMBER);
    }

    public static int getNextAvailable() {
        return getNextAvailable(1);
    }

    public static int getNextAvailable(int i) {
        ServerSocket serverSocket;
        if (i < 1 || i > 49151) {
            throw new IllegalArgumentException(new StringBuffer("Invalid start port: ").append(i).toString());
        }
        for (int i2 = i; i2 <= 49151; i2++) {
            ServerSocket serverSocket2 = null;
            try {
                serverSocket = new ServerSocket(i2);
            } catch (IOException unused) {
            } catch (Throwable th) {
                th = th;
            }
            try {
                new DatagramSocket(i2).close();
                try {
                    serverSocket.close();
                } catch (IOException unused2) {
                }
                return i2;
            } catch (IOException unused3) {
                serverSocket2 = serverSocket;
                if (serverSocket2 != null) {
                    try {
                        serverSocket2.close();
                    } catch (IOException unused4) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                serverSocket2 = serverSocket;
                if (serverSocket2 != null) {
                    try {
                        serverSocket2.close();
                    } catch (IOException unused5) {
                    }
                }
                throw th;
            }
        }
        throw new NoSuchElementException(new StringBuffer("Could not find an available port above ").append(i).toString());
    }

    public static boolean available(int i) {
        if (i < 1 || i > 49151) {
            throw new IllegalArgumentException(new StringBuffer("Invalid start port: ").append(i).toString());
        }
        try {
            try {
                new ServerSocket(i).close();
            } catch (IOException unused) {
            }
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static Set getAvailablePorts(int i, int i2) {
        if (i < 1 || i2 > 49151 || i > i2) {
            throw new IllegalArgumentException(new StringBuffer("Invalid port range: ").append(i).append(" ~ ").append(i2).toString());
        }
        TreeSet treeSet = new TreeSet();
        while (i <= i2) {
            ServerSocket serverSocket = null;
            try {
                ServerSocket serverSocket2 = new ServerSocket(i);
                try {
                    treeSet.add(new Integer(i));
                    try {
                        serverSocket2.close();
                    } catch (IOException unused) {
                    }
                } catch (IOException unused2) {
                    serverSocket = serverSocket2;
                    if (serverSocket != null) {
                        serverSocket.close();
                    }
                    i++;
                } catch (Throwable th) {
                    th = th;
                    serverSocket = serverSocket2;
                    if (serverSocket != null) {
                        try {
                            serverSocket.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused4) {
            } catch (Throwable th2) {
                th = th2;
            }
            i++;
        }
        return treeSet;
    }
}
