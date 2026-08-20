.class public Lcom/criteo/publisher/advancednative/q;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/advancednative/q$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/advancednative/o;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/criteo/publisher/advancednative/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/o;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/q;->b:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/q;->c:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/q;->a:Lcom/criteo/publisher/advancednative/o;

    return-void
.end method

.method private a(Landroid/view/View;)Lcom/criteo/publisher/advancednative/q$a;
    .locals 2

    .line 77
    new-instance v0, Lcom/criteo/publisher/advancednative/q$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/criteo/publisher/advancednative/q;->a:Lcom/criteo/publisher/advancednative/o;

    invoke-direct {v0, v1, p1}, Lcom/criteo/publisher/advancednative/q$a;-><init>(Ljava/lang/ref/Reference;Lcom/criteo/publisher/advancednative/o;)V

    return-object v0
.end method


# virtual methods
.method a(Landroid/view/View;Lcom/criteo/publisher/advancednative/p;)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/q;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/criteo/publisher/advancednative/q;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/q$a;

    if-nez v1, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/criteo/publisher/advancednative/q;->a(Landroid/view/View;)Lcom/criteo/publisher/advancednative/q$a;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/criteo/publisher/advancednative/q;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v1, p2}, Lcom/criteo/publisher/advancednative/q$a;->a(Lcom/criteo/publisher/advancednative/p;)V

    return-void

    :catchall_0
    move-exception p1

    .line 70
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
