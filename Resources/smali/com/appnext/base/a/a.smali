.class public Lcom/appnext/base/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile dw:Lcom/appnext/base/a/a;


# instance fields
.field private dt:Lcom/appnext/base/a/c/a;

.field private du:Lcom/appnext/base/a/c/b;

.field private dv:Lcom/appnext/base/a/c/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    new-instance v0, Lcom/appnext/base/a/c/a;

    invoke-direct {v0}, Lcom/appnext/base/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/a/a;->dt:Lcom/appnext/base/a/c/a;

    .line 1036
    new-instance v0, Lcom/appnext/base/a/c/b;

    invoke-direct {v0}, Lcom/appnext/base/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/a/a;->du:Lcom/appnext/base/a/c/b;

    .line 1037
    new-instance v0, Lcom/appnext/base/a/c/c;

    invoke-direct {v0}, Lcom/appnext/base/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/a/a;->dv:Lcom/appnext/base/a/c/c;

    return-void
.end method

.method public static X()Lcom/appnext/base/a/a;
    .locals 2

    .line 20
    sget-object v0, Lcom/appnext/base/a/a;->dw:Lcom/appnext/base/a/a;

    if-nez v0, :cond_1

    .line 21
    const-class v0, Lcom/appnext/base/a/a;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/appnext/base/a/a;->dw:Lcom/appnext/base/a/a;

    if-nez v1, :cond_0

    .line 23
    new-instance v1, Lcom/appnext/base/a/a;

    invoke-direct {v1}, Lcom/appnext/base/a/a;-><init>()V

    sput-object v1, Lcom/appnext/base/a/a;->dw:Lcom/appnext/base/a/a;

    .line 25
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 27
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/base/a/a;->dw:Lcom/appnext/base/a/a;

    return-object v0
.end method

.method private Y()V
    .locals 1

    .line 35
    new-instance v0, Lcom/appnext/base/a/c/a;

    invoke-direct {v0}, Lcom/appnext/base/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/a/a;->dt:Lcom/appnext/base/a/c/a;

    .line 36
    new-instance v0, Lcom/appnext/base/a/c/b;

    invoke-direct {v0}, Lcom/appnext/base/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/a/a;->du:Lcom/appnext/base/a/c/b;

    .line 37
    new-instance v0, Lcom/appnext/base/a/c/c;

    invoke-direct {v0}, Lcom/appnext/base/a/c/c;-><init>()V

    iput-object v0, p0, Lcom/appnext/base/a/a;->dv:Lcom/appnext/base/a/c/c;

    return-void
.end method


# virtual methods
.method public final Z()Lcom/appnext/base/a/c/a;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/appnext/base/a/a;->dt:Lcom/appnext/base/a/c/a;

    return-object v0
.end method

.method public final aa()Lcom/appnext/base/a/c/b;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/appnext/base/a/a;->du:Lcom/appnext/base/a/c/b;

    return-object v0
.end method

.method public final ab()Lcom/appnext/base/a/c/c;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/appnext/base/a/a;->dv:Lcom/appnext/base/a/c/c;

    return-object v0
.end method
