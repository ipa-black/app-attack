.class Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;
.super Ljava/lang/Object;
.source "VmPipeIdleStatusChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;
    }
.end annotation


# static fields
.field static final INSTANCE:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;


# instance fields
.field private final sessions:Ljava/util/Map;

.field private final worker:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;

    invoke-direct {v0}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;-><init>()V

    sput-object v0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->INSTANCE:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->sessions:Ljava/util/Map;

    .line 25
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;-><init>(Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$1;)V

    iput-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->worker:Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;

    .line 29
    invoke-virtual {v0}, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker$Worker;->start()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;)Ljava/util/Map;
    .locals 0

    .line 19
    iget-object p0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->sessions:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method addSession(Lorg/apache/mina/protocol/vmpipe/VmPipeSession;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->sessions:Ljava/util/Map;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeIdleStatusChecker;->sessions:Ljava/util/Map;

    invoke-interface {v1, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
