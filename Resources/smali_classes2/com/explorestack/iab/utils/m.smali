.class public Lcom/explorestack/iab/utils/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/m$d;
    }
.end annotation


# static fields
.field public static final o:Ljava/lang/String; = "m"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/view/View;

.field public final e:Lcom/explorestack/iab/utils/m$d;

.field public final f:F

.field public g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public h:Landroid/view/View$OnAttachStateChangeListener;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/m$d;)V
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/explorestack/iab/utils/m;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/m$d;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/m$d;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/utils/m;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/utils/m;->b:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->i:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->j:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->k:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->l:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->m:Z

    new-instance v0, Lcom/explorestack/iab/utils/m$a;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/m$a;-><init>(Lcom/explorestack/iab/utils/m;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/m;->n:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/explorestack/iab/utils/m;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/explorestack/iab/utils/m;->e:Lcom/explorestack/iab/utils/m$d;

    iput p4, p0, Lcom/explorestack/iab/utils/m;->f:F

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/m;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/m;->a()V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/utils/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/utils/m;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/explorestack/iab/utils/m;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/m;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "Ad View is not completely visible ("

    :try_start_0
    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    const-string v1, "Visibility != View.VISIBLE"

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    const-string v1, "No parent"

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/explorestack/iab/utils/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    const-string v1, "Can\'t get global visible rect"

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-static {v1}, Lcom/explorestack/iab/utils/Utils;->isViewTransparent(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    const-string v1, "View is transparent (alpha = 0)"

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_4

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    const-string v1, "Ad View width or height is zero, show wasn\'t tracked"

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v2, p0, Lcom/explorestack/iab/utils/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/explorestack/iab/utils/m;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v1, p0, Lcom/explorestack/iab/utils/m;->f:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "), show wasn\'t tracked"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/g;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    const-string v1, "Can\'t obtain root view"

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->a:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    const-string v1, "Ad View is out of current window, show wasn\'t tracked"

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/utils/m;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/explorestack/iab/utils/m;->j:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/m;->a(Z)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    iget-boolean p1, p0, Lcom/explorestack/iab/utils/m;->j:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/explorestack/iab/utils/m;->j:Z

    sget-object p1, Lcom/explorestack/iab/utils/m;->o:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/utils/m;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/utils/m;->i:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/explorestack/iab/utils/m;->i:Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->e:Lcom/explorestack/iab/utils/m$d;

    invoke-interface {v0, p1}, Lcom/explorestack/iab/utils/m$d;->a(Z)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/utils/m;->i:Z

    return v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->l:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->k:Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->h:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->cancelOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-boolean v0, p0, Lcom/explorestack/iab/utils/m;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->k:Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->n:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/explorestack/iab/utils/m;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/iab/utils/m;->l:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/utils/m;->l:Z

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/explorestack/iab/utils/m$b;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/m$b;-><init>(Lcom/explorestack/iab/utils/m;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/m;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->h:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_3

    new-instance v0, Lcom/explorestack/iab/utils/m$c;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/m$c;-><init>(Lcom/explorestack/iab/utils/m;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/m;->h:Landroid/view/View$OnAttachStateChangeListener;

    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->g:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/explorestack/iab/utils/m;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/m;->h:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/utils/m;->a()V

    return-void
.end method
