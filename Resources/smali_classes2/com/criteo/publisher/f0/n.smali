.class public abstract Lcom/criteo/publisher/f0/n;
.super Ljava/lang/Object;
.source "Metric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/f0/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/criteo/publisher/f0/n$a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    new-instance v0, Lcom/criteo/publisher/f0/a$b;

    invoke-direct {v0}, Lcom/criteo/publisher/f0/a$b;-><init>()V

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/a$b;->c(Z)Lcom/criteo/publisher/f0/n$a;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->b(Z)Lcom/criteo/publisher/f0/n$a;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/f0/n$a;->a(Z)Lcom/criteo/publisher/f0/n$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/criteo/publisher/f0/n$a;
    .locals 1

    .line 31
    invoke-static {}, Lcom/criteo/publisher/f0/n;->a()Lcom/criteo/publisher/f0/n$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/criteo/publisher/f0/n$a;->a(Ljava/lang/String;)Lcom/criteo/publisher/f0/n$a;

    move-result-object p0

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
            "Lcom/criteo/publisher/f0/n;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/criteo/publisher/f0/e$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f0/e$a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Ljava/lang/Long;
.end method

.method abstract c()Ljava/lang/Long;
.end method

.method abstract d()Ljava/lang/Long;
.end method

.method abstract e()Ljava/lang/String;
.end method

.method abstract f()Ljava/lang/Integer;
.end method

.method abstract g()Ljava/lang/String;
.end method

.method abstract h()Ljava/lang/Integer;
.end method

.method abstract i()Z
.end method

.method abstract j()Z
.end method

.method abstract k()Z
.end method

.method abstract l()Lcom/criteo/publisher/f0/n$a;
.end method
