.class public abstract Lcom/criteo/publisher/f0/t;
.super Ljava/lang/Object;
.source "MetricRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/f0/t$b;,
        Lcom/criteo/publisher/f0/t$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/lang/String;I)Lcom/criteo/publisher/f0/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/criteo/publisher/f0/n;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/criteo/publisher/f0/t;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/f0/n;

    .line 42
    invoke-static {v1}, Lcom/criteo/publisher/f0/t$a;->a(Lcom/criteo/publisher/f0/n;)Lcom/criteo/publisher/f0/t$a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Lcom/criteo/publisher/f0/f;

    invoke-direct {p0, v0, p1, p2}, Lcom/criteo/publisher/f0/f;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    return-object p0
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/criteo/publisher/f0/t;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/criteo/publisher/f0/f$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f0/f$a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f0/t$a;",
            ">;"
        }
    .end annotation
.end method

.method abstract b()I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profile_id"
    .end annotation
.end method

.method abstract c()Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wrapper_version"
    .end annotation
.end method
