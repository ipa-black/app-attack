.class public Lcom/criteo/publisher/n0/e;
.super Ljava/lang/Object;
.source "AppLifecycleUtil.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private final a:Lcom/criteo/publisher/a/a;

.field private final b:Lcom/criteo/publisher/e;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/a/a;Lcom/criteo/publisher/e;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/criteo/publisher/n0/e;->a:Lcom/criteo/publisher/a/a;

    .line 37
    iput-object p2, p0, Lcom/criteo/publisher/n0/e;->b:Lcom/criteo/publisher/e;

    const/4 p1, 0x0

    .line 38
    iput p1, p0, Lcom/criteo/publisher/n0/e;->c:I

    .line 39
    iput p1, p0, Lcom/criteo/publisher/n0/e;->d:I

    .line 40
    iput-boolean p1, p0, Lcom/criteo/publisher/n0/e;->e:Z

    .line 41
    iput-boolean p1, p0, Lcom/criteo/publisher/n0/e;->f:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 46
    iget-boolean p1, p0, Lcom/criteo/publisher/n0/e;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/criteo/publisher/n0/e;->f:Z

    .line 48
    iget-object p1, p0, Lcom/criteo/publisher/n0/e;->a:Lcom/criteo/publisher/a/a;

    invoke-virtual {p1}, Lcom/criteo/publisher/a/a;->d()V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/criteo/publisher/n0/e;->e:Z

    .line 69
    iget v0, p0, Lcom/criteo/publisher/n0/e;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/criteo/publisher/n0/e;->d:I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 59
    iget p1, p0, Lcom/criteo/publisher/n0/e;->d:I

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/criteo/publisher/n0/e;->e:Z

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/criteo/publisher/n0/e;->a:Lcom/criteo/publisher/a/a;

    invoke-virtual {p1}, Lcom/criteo/publisher/a/a;->b()V

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/criteo/publisher/n0/e;->e:Z

    .line 63
    iget p1, p0, Lcom/criteo/publisher/n0/e;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/criteo/publisher/n0/e;->d:I

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 54
    iget p1, p0, Lcom/criteo/publisher/n0/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/criteo/publisher/n0/e;->c:I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 74
    iget p1, p0, Lcom/criteo/publisher/n0/e;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 76
    iget-boolean p1, p0, Lcom/criteo/publisher/n0/e;->e:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/criteo/publisher/n0/e;->d:I

    if-nez p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/criteo/publisher/n0/e;->a:Lcom/criteo/publisher/a/a;

    invoke-virtual {p1}, Lcom/criteo/publisher/a/a;->c()V

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/n0/e;->a:Lcom/criteo/publisher/a/a;

    invoke-virtual {p1}, Lcom/criteo/publisher/a/a;->a()V

    .line 80
    iget-object p1, p0, Lcom/criteo/publisher/n0/e;->b:Lcom/criteo/publisher/e;

    invoke-virtual {p1}, Lcom/criteo/publisher/e;->c()V

    :cond_1
    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/criteo/publisher/n0/e;->e:Z

    .line 83
    iget p1, p0, Lcom/criteo/publisher/n0/e;->c:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/criteo/publisher/n0/e;->c:I

    return-void
.end method
