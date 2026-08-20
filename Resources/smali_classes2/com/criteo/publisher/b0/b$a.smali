.class Lcom/criteo/publisher/b0/b$a;
.super Lcom/criteo/publisher/a0/a;
.source "Redirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/b0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Landroid/content/ComponentName;

.field private c:Lcom/criteo/publisher/b0/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/content/ComponentName;Lcom/criteo/publisher/b0/c;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/criteo/publisher/a0/a;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/criteo/publisher/b0/b$a;->a:Landroid/app/Application;

    .line 91
    iput-object p2, p0, Lcom/criteo/publisher/b0/b$a;->b:Landroid/content/ComponentName;

    .line 92
    iput-object p3, p0, Lcom/criteo/publisher/b0/b$a;->c:Lcom/criteo/publisher/b0/c;

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/criteo/publisher/b0/b$a;->b:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/b0/b$a;->c:Lcom/criteo/publisher/b0/c;

    if-nez p1, :cond_1

    return-void

    .line 106
    :cond_1
    invoke-interface {p1}, Lcom/criteo/publisher/b0/c;->a()V

    .line 107
    iget-object p1, p0, Lcom/criteo/publisher/b0/b$a;->a:Landroid/app/Application;

    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x0

    .line 108
    iput-object p1, p0, Lcom/criteo/publisher/b0/b$a;->c:Lcom/criteo/publisher/b0/c;

    return-void
.end method
