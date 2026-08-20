package com.criteo.publisher.f0;

import com.criteo.publisher.f0.t;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_MetricRequest_MetricRequestSlot.java */
/* loaded from: classes2.dex */
public final class h extends d {
    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, Integer num, boolean z) {
        super(str, num, z);
    }

    /* compiled from: AutoValue_MetricRequest_MetricRequestSlot.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<t.b> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<String> f8783a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<Integer> f8784b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<Boolean> f8785c;

        /* renamed from: d  reason: collision with root package name */
        private final Gson f8786d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f8786d = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, t.b bVar) throws IOException {
            if (bVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("impressionId");
            if (bVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter = this.f8783a;
                if (typeAdapter == null) {
                    typeAdapter = this.f8786d.getAdapter(String.class);
                    this.f8783a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, bVar.b());
            }
            jsonWriter.name("zoneId");
            if (bVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Integer> typeAdapter2 = this.f8784b;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f8786d.getAdapter(Integer.class);
                    this.f8784b = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, bVar.c());
            }
            jsonWriter.name("cachedBidUsed");
            TypeAdapter<Boolean> typeAdapter3 = this.f8785c;
            if (typeAdapter3 == null) {
                typeAdapter3 = this.f8786d.getAdapter(Boolean.class);
                this.f8785c = typeAdapter3;
            }
            typeAdapter3.write(jsonWriter, Boolean.valueOf(bVar.a()));
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public t.b read(JsonReader jsonReader) throws IOException {
            String str = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            boolean z = false;
            Integer num = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if ("impressionId".equals(nextName)) {
                        TypeAdapter<String> typeAdapter = this.f8783a;
                        if (typeAdapter == null) {
                            typeAdapter = this.f8786d.getAdapter(String.class);
                            this.f8783a = typeAdapter;
                        }
                        str = typeAdapter.read(jsonReader);
                    } else if ("zoneId".equals(nextName)) {
                        TypeAdapter<Integer> typeAdapter2 = this.f8784b;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f8786d.getAdapter(Integer.class);
                            this.f8784b = typeAdapter2;
                        }
                        num = typeAdapter2.read(jsonReader);
                    } else if ("cachedBidUsed".equals(nextName)) {
                        TypeAdapter<Boolean> typeAdapter3 = this.f8785c;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f8786d.getAdapter(Boolean.class);
                            this.f8785c = typeAdapter3;
                        }
                        z = typeAdapter3.read(jsonReader).booleanValue();
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new h(str, num, z);
        }

        public String toString() {
            return "TypeAdapter(MetricRequest.MetricRequestSlot)";
        }
    }
}
