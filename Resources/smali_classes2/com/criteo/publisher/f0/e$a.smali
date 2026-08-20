.class final Lcom/criteo/publisher/f0/e$a;
.super Lcom/google/gson/TypeAdapter;
.source "AutoValue_Metric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/criteo/publisher/f0/n;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/f0/n;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 147
    invoke-static {}, Lcom/criteo/publisher/f0/n;->a()Lcom/criteo/publisher/f0/n$a;

    move-result-object v0

    .line 148
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 149
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 156
    const-string v2, "cdbCallStartTimestamp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    .line 161
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->b(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;

    goto :goto_0

    .line 164
    :cond_3
    const-string v2, "cdbCallEndTimestamp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 165
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_4

    .line 167
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    .line 169
    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->a(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;

    goto :goto_0

    .line 172
    :cond_5
    const-string v2, "cdbCallTimeout"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 173
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_6

    .line 175
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    .line 177
    :cond_6
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->b(Z)Lcom/criteo/publisher/f0/n$a;

    goto :goto_0

    .line 180
    :cond_7
    const-string v2, "cachedBidUsed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 181
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_8

    .line 183
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    .line 185
    :cond_8
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->a(Z)Lcom/criteo/publisher/f0/n$a;

    goto/16 :goto_0

    .line 188
    :cond_9
    const-string v2, "elapsedTimestamp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 189
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_a

    .line 191
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    .line 193
    :cond_a
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->c(Ljava/lang/Long;)Lcom/criteo/publisher/f0/n$a;

    goto/16 :goto_0

    .line 196
    :cond_b
    const-string v2, "impressionId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 197
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_c

    .line 199
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    .line 201
    :cond_c
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->a(Ljava/lang/String;)Lcom/criteo/publisher/f0/n$a;

    goto/16 :goto_0

    .line 204
    :cond_d
    const-string v2, "requestGroupId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 205
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_e

    .line 207
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    .line 209
    :cond_e
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->b(Ljava/lang/String;)Lcom/criteo/publisher/f0/n$a;

    goto/16 :goto_0

    .line 212
    :cond_f
    const-string v2, "zoneId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 213
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_10

    .line 215
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    .line 217
    :cond_10
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->b(Ljava/lang/Integer;)Lcom/criteo/publisher/f0/n$a;

    goto/16 :goto_0

    .line 220
    :cond_11
    const-string v2, "profileId"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 221
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_12

    .line 223
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    .line 225
    :cond_12
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->a(Ljava/lang/Integer;)Lcom/criteo/publisher/f0/n$a;

    goto/16 :goto_0

    .line 228
    :cond_13
    const-string v2, "readyToSend"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 229
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_14

    .line 231
    iget-object v1, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    .line 233
    :cond_14
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->c(Z)Lcom/criteo/publisher/f0/n$a;

    goto/16 :goto_0

    .line 236
    :cond_15
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 240
    :cond_16
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 241
    invoke-virtual {v0}, Lcom/criteo/publisher/f0/n$a;->a()Lcom/criteo/publisher/f0/n;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/f0/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 43
    const-string v0, "cdbCallStartTimestamp"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 44
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->c()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    .line 51
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->c()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 53
    :goto_0
    const-string v0, "cdbCallEndTimestamp"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 54
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->b()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    .line 55
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_4

    .line 59
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    .line 61
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 63
    :goto_1
    const-string v0, "cdbCallTimeout"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 65
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_5

    .line 67
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    .line 69
    :cond_5
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 71
    const-string v0, "cachedBidUsed"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 73
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_6

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    .line 77
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 79
    const-string v0, "elapsedTimestamp"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 80
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->d()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 83
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_8

    .line 85
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->a:Lcom/google/gson/TypeAdapter;

    .line 87
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->d()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 89
    :goto_2
    const-string v0, "impressionId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 90
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 91
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_a

    .line 95
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    .line 97
    :cond_a
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 99
    :goto_3
    const-string v0, "requestGroupId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 100
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 101
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_4

    .line 103
    :cond_b
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_c

    .line 105
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->c:Lcom/google/gson/TypeAdapter;

    .line 107
    :cond_c
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 109
    :goto_4
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 110
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->h()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_d

    .line 111
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_5

    .line 113
    :cond_d
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_e

    .line 115
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    .line 117
    :cond_e
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 119
    :goto_5
    const-string v0, "profileId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 120
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->f()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_f

    .line 121
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_6

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_10

    .line 125
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->d:Lcom/google/gson/TypeAdapter;

    .line 127
    :cond_10
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->f()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 129
    :goto_6
    const-string v0, "readyToSend"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 131
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_11

    .line 133
    iget-object v0, p0, Lcom/criteo/publisher/f0/e$a;->e:Lcom/google/gson/Gson;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/f0/e$a;->b:Lcom/google/gson/TypeAdapter;

    .line 135
    :cond_11
    invoke-virtual {p2}, Lcom/criteo/publisher/f0/n;->k()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/f0/e$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/f0/n;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 245
    const-string v0, "TypeAdapter(Metric)"

    return-object v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    check-cast p2, Lcom/criteo/publisher/f0/n;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/f0/e$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/f0/n;)V

    return-void
.end method
