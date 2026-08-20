.class public Lcom/criteo/publisher/k0/a;
.super Lcom/criteo/publisher/x;
.source "AppEventTask.java"


# instance fields
.field private final c:Lcom/criteo/publisher/logging/g;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/criteo/publisher/n0/d;

.field private final f:Lcom/criteo/publisher/n0/b;

.field private final g:Lcom/criteo/publisher/k0/g;

.field private final h:Lcom/criteo/publisher/model/u;

.field private final i:Lcom/criteo/publisher/l0/c;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/criteo/publisher/n0/d;Lcom/criteo/publisher/n0/b;Lcom/criteo/publisher/k0/g;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/l0/c;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    .line 35
    const-class v0, Lcom/criteo/publisher/k0/a;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/k0/a;->c:Lcom/criteo/publisher/logging/g;

    .line 67
    iput-object p1, p0, Lcom/criteo/publisher/k0/a;->d:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/criteo/publisher/k0/a;->e:Lcom/criteo/publisher/n0/d;

    .line 69
    iput-object p3, p0, Lcom/criteo/publisher/k0/a;->f:Lcom/criteo/publisher/n0/b;

    .line 70
    iput-object p4, p0, Lcom/criteo/publisher/k0/a;->g:Lcom/criteo/publisher/k0/g;

    .line 71
    iput-object p5, p0, Lcom/criteo/publisher/k0/a;->h:Lcom/criteo/publisher/model/u;

    .line 72
    iput-object p6, p0, Lcom/criteo/publisher/k0/a;->i:Lcom/criteo/publisher/l0/c;

    .line 73
    iput-object p7, p0, Lcom/criteo/publisher/k0/a;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/criteo/publisher/k0/a;->f:Lcom/criteo/publisher/n0/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b;->d()Z

    move-result v6

    .line 79
    iget-object v0, p0, Lcom/criteo/publisher/k0/a;->f:Lcom/criteo/publisher/n0/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b;->b()Ljava/lang/String;

    move-result-object v4

    .line 80
    iget-object v0, p0, Lcom/criteo/publisher/k0/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 82
    iget-object v0, p0, Lcom/criteo/publisher/k0/a;->h:Lcom/criteo/publisher/model/u;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/u;->b()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/criteo/publisher/k0/a;->g:Lcom/criteo/publisher/k0/g;

    iget-object v5, p0, Lcom/criteo/publisher/k0/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/criteo/publisher/k0/a;->i:Lcom/criteo/publisher/l0/c;

    .line 90
    invoke-virtual {v0}, Lcom/criteo/publisher/l0/c;->a()Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x94b

    .line 83
    invoke-virtual/range {v1 .. v8}, Lcom/criteo/publisher/k0/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/criteo/publisher/k0/a;->c:Lcom/criteo/publisher/logging/g;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App event response: %s"

    invoke-virtual {v1, v3, v2}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const-string v1, "throttleSec"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/criteo/publisher/k0/a;->e:Lcom/criteo/publisher/n0/d;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v2, v0}, Lcom/criteo/publisher/n0/d;->a(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/k0/a;->e:Lcom/criteo/publisher/n0/d;

    invoke-interface {v0, v3}, Lcom/criteo/publisher/n0/d;->a(I)V

    :goto_0
    return-void
.end method
