package com.squareup.tape;

import com.squareup.tape.FileObjectQueue;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
/* loaded from: classes3.dex */
public class SerializedConverter<T extends Serializable> implements FileObjectQueue.Converter<T> {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.tape.FileObjectQueue.Converter
    public /* bridge */ /* synthetic */ void toStream(Object obj, OutputStream outputStream) throws IOException {
        toStream((SerializedConverter<T>) ((Serializable) obj), outputStream);
    }

    private T deserialize(InputStream inputStream) throws IOException {
        try {
            return (T) new ObjectInputStream(new BufferedInputStream(inputStream, 1024)).readUnshared();
        } catch (ClassNotFoundException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // com.squareup.tape.FileObjectQueue.Converter
    public T from(byte[] bArr) throws IOException {
        return deserialize(new ByteArrayInputStream(bArr));
    }

    public void toStream(T t, OutputStream outputStream) throws IOException {
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
        objectOutputStream.writeUnshared(t);
        objectOutputStream.close();
    }
}
