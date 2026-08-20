.class Lorg/apache/commons/io/FileCleaner$1;
.super Ljava/lang/Thread;
.source "FileCleaner.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 59
    :catch_0
    :goto_0
    :try_start_0
    invoke-static {}, Lorg/apache/commons/io/FileCleaner;->access$000()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/FileCleaner$Tracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaner$Tracker;->delete()Z

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 66
    invoke-static {}, Lorg/apache/commons/io/FileCleaner;->access$100()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
