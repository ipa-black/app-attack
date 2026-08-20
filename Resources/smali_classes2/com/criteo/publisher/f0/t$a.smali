.class public abstract Lcom/criteo/publisher/f0/t$a;
.super Ljava/lang/Object;
.source "MetricRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/criteo/publisher/f0/n;)Lcom/criteo/publisher/f0/t$a;
    .locals 9

    .line 72
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->e()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->h()Ljava/lang/Integer;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->i()Z

    move-result v2

    .line 71
    invoke-static {v0, v1, v2}, Lcom/criteo/publisher/f0/t$b;->a(Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/criteo/publisher/f0/t$b;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 79
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->d()Ljava/lang/Long;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->c()Ljava/lang/Long;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/criteo/publisher/f0/t$a;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->b()Ljava/lang/Long;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->c()Ljava/lang/Long;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/criteo/publisher/f0/t$a;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v7

    .line 88
    new-instance v0, Lcom/criteo/publisher/f0/g;

    .line 91
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->j()Z

    move-result v4

    .line 94
    invoke-virtual {p0}, Lcom/criteo/publisher/f0/n;->g()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/criteo/publisher/f0/g;-><init>(Ljava/util/List;Ljava/lang/Long;ZJLjava/lang/Long;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/criteo/publisher/f0/t$a;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/criteo/publisher/f0/g$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f0/g$a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    sub-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method abstract a()Ljava/lang/Long;
.end method

.method abstract b()J
.end method

.method abstract c()Ljava/lang/Long;
.end method

.method abstract d()Ljava/lang/String;
.end method

.method abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f0/t$b;",
            ">;"
        }
    .end annotation
.end method

.method abstract f()Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isTimeout"
    .end annotation
.end method
