package com.criteo.publisher.n0;

import com.google.android.exoplayer2.C;
import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.nio.charset.Charset;
/* compiled from: JsonSerializer.java */
/* loaded from: classes2.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f9228a;

    public l(Gson gson) {
        this.f9228a = gson;
    }

    public void a(Object obj, OutputStream outputStream) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, Charset.forName(C.UTF8_NAME));
        try {
            this.f9228a.toJson(obj, outputStreamWriter);
            outputStreamWriter.flush();
        } catch (JsonIOException e2) {
            throw new IOException(e2);
        }
    }

    public <T> T a(Class<T> cls, InputStream inputStream) throws IOException {
        try {
            T t = (T) this.f9228a.fromJson((Reader) new InputStreamReader(inputStream, Charset.forName(C.UTF8_NAME)), (Class<Object>) cls);
            if (t != null) {
                return t;
            }
            throw new EOFException();
        } catch (JsonParseException e2) {
            throw new IOException(e2);
        }
    }
}
