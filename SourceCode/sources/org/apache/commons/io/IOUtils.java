package org.apache.commons.io;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import org.apache.commons.io.output.ByteArrayOutputStream;
/* loaded from: classes5.dex */
public final class IOUtils {
    private static final int DEFAULT_BUFFER_SIZE = 4096;

    public static void closeQuietly(Reader reader) {
        if (reader == null) {
            return;
        }
        try {
            reader.close();
        } catch (IOException unused) {
        }
    }

    public static void closeQuietly(Writer writer) {
        if (writer == null) {
            return;
        }
        try {
            writer.close();
        } catch (IOException unused) {
        }
    }

    public static void closeQuietly(OutputStream outputStream) {
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.close();
        } catch (IOException unused) {
        }
    }

    public static void closeQuietly(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
    }

    public static String toString(InputStream inputStream) throws IOException {
        StringWriter stringWriter = new StringWriter();
        CopyUtils.copy(inputStream, stringWriter);
        return stringWriter.toString();
    }

    public static String toString(InputStream inputStream, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        CopyUtils.copy(inputStream, stringWriter, str);
        return stringWriter.toString();
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        CopyUtils.copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static String toString(Reader reader) throws IOException {
        StringWriter stringWriter = new StringWriter();
        CopyUtils.copy(reader, stringWriter);
        return stringWriter.toString();
    }

    public static byte[] toByteArray(Reader reader) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        CopyUtils.copy(reader, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(String str) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        CopyUtils.copy(str, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static String toString(byte[] bArr) throws IOException {
        StringWriter stringWriter = new StringWriter();
        CopyUtils.copy(bArr, stringWriter);
        return stringWriter.toString();
    }

    public static String toString(byte[] bArr, String str) throws IOException {
        StringWriter stringWriter = new StringWriter();
        CopyUtils.copy(bArr, stringWriter, str);
        return stringWriter.toString();
    }

    public static boolean contentEquals(InputStream inputStream, InputStream inputStream2) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream2);
        for (int read = bufferedInputStream.read(); -1 != read; read = bufferedInputStream.read()) {
            if (read != bufferedInputStream2.read()) {
                return false;
            }
        }
        return -1 == bufferedInputStream2.read();
    }
}
