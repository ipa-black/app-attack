.class Lorg/apache/commons/lang/builder/ReflectionToStringBuilder$1;
.super Ljava/lang/ThreadLocal;
.source "ReflectionToStringBuilder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized initialValue()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 119
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
