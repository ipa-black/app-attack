.class public Lcom/explorestack/iab/mraid/MraidView;
.super Lcom/explorestack/iab/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/view/a$d;
.implements Lcom/explorestack/iab/utils/IabClickCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/MraidView$Builder;,
        Lcom/explorestack/iab/mraid/MraidView$l;
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:F

.field public final C:F

.field public final D:F

.field public final E:Z

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final J:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final K:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public L:Z

.field public M:Z

.field public N:Z

.field public final O:Lcom/explorestack/iab/view/a$d;

.field public final P:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final Q:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final R:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final S:Lcom/explorestack/iab/utils/IabElementStyle;

.field public T:Lcom/explorestack/iab/utils/l;

.field public U:Lcom/explorestack/iab/utils/j;

.field public V:Ljava/lang/Runnable;

.field public W:Ljava/lang/Integer;

.field public final h:Landroid/content/MutableContextWrapper;

.field public i:Lcom/explorestack/iab/mraid/h;

.field public final j:Lcom/explorestack/iab/mraid/j;

.field public k:Lcom/explorestack/iab/mraid/j;

.field public l:Lcom/explorestack/iab/view/a;

.field public m:Lcom/explorestack/iab/view/a;

.field public n:Lcom/explorestack/iab/utils/h;

.field public o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Landroid/view/GestureDetector;

.field public final q:Lcom/explorestack/iab/mraid/b;

.field public final r:Lcom/explorestack/iab/mraid/f;

.field public final s:Lcom/explorestack/iab/mraid/k;

.field public t:Ljava/lang/String;

.field public u:Lcom/explorestack/iab/mraid/MraidViewListener;

.field public final v:Lcom/explorestack/iab/measurer/MraidAdMeasurer;

.field public final w:Lcom/explorestack/iab/mraid/d;

.field public final x:Lcom/explorestack/iab/CacheControl;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$Builder;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/explorestack/iab/view/a;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/explorestack/iab/mraid/h;->a:Lcom/explorestack/iab/mraid/h;

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/explorestack/iab/mraid/MraidView;->L:Z

    iput-boolean v1, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    iput-boolean v1, p0, Lcom/explorestack/iab/mraid/MraidView;->N:Z

    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->h:Landroid/content/MutableContextWrapper;

    iget-object v1, p2, Lcom/explorestack/iab/mraid/MraidView$Builder;->listener:Lcom/explorestack/iab/mraid/MraidViewListener;

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->a(Lcom/explorestack/iab/mraid/MraidView$Builder;)Lcom/explorestack/iab/mraid/d;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->w:Lcom/explorestack/iab/mraid/d;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->b(Lcom/explorestack/iab/mraid/MraidView$Builder;)Lcom/explorestack/iab/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->x:Lcom/explorestack/iab/CacheControl;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->j(Lcom/explorestack/iab/mraid/MraidView$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->y:Ljava/lang/String;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->k(Lcom/explorestack/iab/mraid/MraidView$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->z:Ljava/lang/String;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->l(Lcom/explorestack/iab/mraid/MraidView$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->A:Ljava/lang/String;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->m(Lcom/explorestack/iab/mraid/MraidView$Builder;)F

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/mraid/MraidView;->B:F

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->n(Lcom/explorestack/iab/mraid/MraidView$Builder;)F

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/mraid/MraidView;->C:F

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->o(Lcom/explorestack/iab/mraid/MraidView$Builder;)F

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/mraid/MraidView;->D:F

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->p(Lcom/explorestack/iab/mraid/MraidView$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->E:Z

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->q(Lcom/explorestack/iab/mraid/MraidView$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->F:Z

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->c(Lcom/explorestack/iab/mraid/MraidView$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->G:Z

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->d(Lcom/explorestack/iab/mraid/MraidView$Builder;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/explorestack/iab/mraid/MraidView;->H:Z

    iget-object v2, p2, Lcom/explorestack/iab/mraid/MraidView$Builder;->mraidAdMeasurer:Lcom/explorestack/iab/measurer/MraidAdMeasurer;

    iput-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->v:Lcom/explorestack/iab/measurer/MraidAdMeasurer;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->e(Lcom/explorestack/iab/mraid/MraidView$Builder;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/mraid/MraidView;->P:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->f(Lcom/explorestack/iab/mraid/MraidView$Builder;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/mraid/MraidView;->Q:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->g(Lcom/explorestack/iab/mraid/MraidView$Builder;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/mraid/MraidView;->R:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->h(Lcom/explorestack/iab/mraid/MraidView$Builder;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/mraid/MraidView;->S:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v4, Lcom/explorestack/iab/mraid/b;

    invoke-static {p2}, Lcom/explorestack/iab/mraid/MraidView$Builder;->i(Lcom/explorestack/iab/mraid/MraidView$Builder;)[Ljava/lang/String;

    move-result-object p2

    invoke-direct {v4, p2}, Lcom/explorestack/iab/mraid/b;-><init>([Ljava/lang/String;)V

    iput-object v4, p0, Lcom/explorestack/iab/mraid/MraidView;->q:Lcom/explorestack/iab/mraid/b;

    new-instance p2, Lcom/explorestack/iab/mraid/f;

    invoke-direct {p2, p1}, Lcom/explorestack/iab/mraid/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    new-instance p2, Lcom/explorestack/iab/mraid/k;

    invoke-direct {p2}, Lcom/explorestack/iab/mraid/k;-><init>()V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->s:Lcom/explorestack/iab/mraid/k;

    new-instance p2, Landroid/view/GestureDetector;

    new-instance v4, Lcom/explorestack/iab/mraid/MraidView$c;

    invoke-direct {v4, p0}, Lcom/explorestack/iab/mraid/MraidView$c;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-direct {p2, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->p:Landroid/view/GestureDetector;

    new-instance p2, Lcom/explorestack/iab/mraid/j;

    new-instance v4, Lcom/explorestack/iab/mraid/MraidView$d;

    invoke-direct {v4, p0}, Lcom/explorestack/iab/mraid/MraidView$d;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-direct {p2, v0, v4}, Lcom/explorestack/iab/mraid/j;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/j$b;)V

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {p2}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x11

    invoke-direct {v4, v5, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/explorestack/iab/utils/j;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/explorestack/iab/utils/j;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->U:Lcom/explorestack/iab/utils/j;

    invoke-virtual {v0, p1, p0, v3}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    new-instance p1, Lcom/explorestack/iab/mraid/MraidView$e;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/mraid/MraidView$e;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    new-instance v0, Lcom/explorestack/iab/utils/l;

    invoke-direct {v0, p0, p1}, Lcom/explorestack/iab/utils/l;-><init>(Landroid/view/View;Lcom/explorestack/iab/utils/l$c;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->T:Lcom/explorestack/iab/utils/l;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/l;->a(F)V

    :cond_0
    new-instance p1, Lcom/explorestack/iab/mraid/MraidView$f;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/mraid/MraidView$f;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->O:Lcom/explorestack/iab/view/a$d;

    invoke-virtual {p0, p0}, Lcom/explorestack/iab/view/a;->setCloseClickListener(Lcom/explorestack/iab/view/a$d;)V

    if-eqz v2, :cond_1

    invoke-interface {v2, p0}, Lcom/explorestack/iab/measurer/AdMeasurer;->registerAdContainer(Landroid/view/ViewGroup;)V

    invoke-virtual {p2}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object p1

    invoke-interface {v2, p1}, Lcom/explorestack/iab/measurer/AdMeasurer;->registerAdView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$Builder;Lcom/explorestack/iab/mraid/MraidView$c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/explorestack/iab/mraid/MraidView;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/MraidView$Builder;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(I)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/iab/mraid/MraidView;->b(IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/c;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/c;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/e;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/j;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->F:Z

    return p0
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/MraidView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/MraidView;->N:Z

    return p1
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/iab/mraid/MraidView;->a(IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->N:Z

    return p0
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/MraidView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/mraid/MraidView;->L:Z

    return p1
.end method

.method public static synthetic c(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    return-object p0
.end method

.method public static synthetic d(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->m()V

    return-void
.end method

.method public static synthetic e(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->L:Z

    return p0
.end method

.method public static synthetic f(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    return-object p0
.end method

.method public static synthetic g(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/j;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->U:Lcom/explorestack/iab/utils/j;

    return-object p0
.end method

.method public static synthetic h(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    return p0
.end method

.method public static synthetic i(Lcom/explorestack/iab/mraid/MraidView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/mraid/MraidView;->H:Z

    return p0
.end method

.method public static synthetic j(Lcom/explorestack/iab/mraid/MraidView;)F
    .locals 0

    iget p0, p0, Lcom/explorestack/iab/mraid/MraidView;->D:F

    return p0
.end method

.method public static synthetic k(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->i()V

    return-void
.end method

.method public static synthetic l(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->l()V

    return-void
.end method

.method public static synthetic m(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/h;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    return-object p0
.end method

.method public static synthetic n(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->e()V

    return-void
.end method

.method public static synthetic o(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->d()V

    return-void
.end method

.method public static synthetic p(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->P:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object p0
.end method

.method public static synthetic q(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/f;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    return-object p0
.end method

.method public static synthetic r(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->g()V

    return-void
.end method

.method public static synthetic s(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->h()V

    return-void
.end method

.method private setResizedViewSizeAndPosition(Lcom/explorestack/iab/mraid/e;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setResizedViewSizeAndPosition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MRAIDView"

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/explorestack/iab/mraid/e;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/explorestack/iab/mraid/e;->b:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p1, Lcom/explorestack/iab/mraid/e;->c:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget p1, p1, Lcom/explorestack/iab/mraid/e;->d:I

    int-to-float p1, p1

    invoke-static {v3, p1}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/f;->b()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p1

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic t(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/j;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    return-object p0
.end method

.method public static synthetic u(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/b;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->q:Lcom/explorestack/iab/mraid/b;

    return-object p0
.end method

.method public static synthetic v(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/d;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->w:Lcom/explorestack/iab/mraid/d;

    return-object p0
.end method

.method public static synthetic w(Lcom/explorestack/iab/mraid/MraidView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/MraidView;->A:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(III)Landroid/view/MotionEvent;
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    int-to-float v5, p2

    int-to-float v6, p3

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    return-object p1
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->x:Lcom/explorestack/iab/CacheControl;

    sget-object v1, Lcom/explorestack/iab/CacheControl;->PartialLoad:Lcom/explorestack/iab/CacheControl;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    const/4 v0, 0x3

    invoke-interface {p1, p0, v0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onError(Lcom/explorestack/iab/mraid/MraidView;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/iab/mraid/MraidViewListener;->onError(Lcom/explorestack/iab/mraid/MraidView;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/i;II)V

    iput-object p4, p0, Lcom/explorestack/iab/mraid/MraidView;->V:Ljava/lang/Runnable;

    const-wide/16 p1, 0x96

    invoke-virtual {p0, p4, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->W:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->W:Ljava/lang/Integer;

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/c;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applyOrientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MRAIDView"

    invoke-static {v2, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string p1, "no any interacted activities"

    invoke-static {v2, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->b(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/c;->a(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/e;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    sget-object v1, Lcom/explorestack/iab/mraid/h;->a:Lcom/explorestack/iab/mraid/h;

    const-string v2, "MRAIDView"

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/explorestack/iab/mraid/h;->e:Lcom/explorestack/iab/mraid/h;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/explorestack/iab/mraid/h;->d:Lcom/explorestack/iab/mraid/h;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->w:Lcom/explorestack/iab/mraid/d;

    sget-object v1, Lcom/explorestack/iab/mraid/d;->b:Lcom/explorestack/iab/mraid/d;

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/explorestack/iab/mraid/g;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    const-string p1, "Can\'t add resized view because can\'t find required parent"

    invoke-static {v2, p1}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v1, Lcom/explorestack/iab/view/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/explorestack/iab/view/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    invoke-virtual {v1, p0}, Lcom/explorestack/iab/view/a;->setCloseClickListener(Lcom/explorestack/iab/view/a$d;)V

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->P:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Assets;->resolveDefCloseStyle(Landroid/content/Context;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    iget-object v1, p1, Lcom/explorestack/iab/mraid/e;->e:Lcom/explorestack/iab/mraid/l;

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/l;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    iget-object v1, p1, Lcom/explorestack/iab/mraid/e;->e:Lcom/explorestack/iab/mraid/l;

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/l;->a()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    invoke-virtual {v1, v0}, Lcom/explorestack/iab/view/a;->setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    iget v1, p0, Lcom/explorestack/iab/mraid/MraidView;->C:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/explorestack/iab/view/a;->setCloseVisibility(ZF)V

    invoke-direct {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setResizedViewSizeAndPosition(Lcom/explorestack/iab/mraid/e;)V

    sget-object p1, Lcom/explorestack/iab/mraid/h;->c:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/h;)V

    return-void

    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Callback: onResize (invalidate state: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/i;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/explorestack/iab/mraid/MraidView;->a(III)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/explorestack/iab/mraid/MraidView;->a(III)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final a(Lcom/explorestack/iab/mraid/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/j;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/explorestack/iab/mraid/MraidView;->F:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    if-eqz v0, :cond_3

    :goto_2
    iget v1, p0, Lcom/explorestack/iab/mraid/MraidView;->C:F

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/view/a;->setCloseVisibility(ZF)V

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->N:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/explorestack/iab/mraid/MraidView;->C:F

    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/view/a;->setCloseVisibility(ZF)V

    :cond_5
    :goto_4
    return-void
.end method

.method public final a(Lcom/explorestack/iab/view/a;Lcom/explorestack/iab/mraid/j;)V
    .locals 1

    invoke-virtual {p0, p0}, Lcom/explorestack/iab/view/a;->setCloseClickListener(Lcom/explorestack/iab/view/a$d;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->P:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/view/a;->setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->Q:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/view/a;->setCountDownStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V

    invoke-virtual {p0, p2}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/j;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    :goto_0
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->s:Lcom/explorestack/iab/mraid/k;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/k;->a([Landroid/view/View;)Lcom/explorestack/iab/mraid/k$a;

    move-result-object v1

    new-instance v2, Lcom/explorestack/iab/mraid/MraidView$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/explorestack/iab/mraid/MraidView$a;-><init>(Lcom/explorestack/iab/mraid/MraidView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/mraid/k$a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    sget-object v1, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/h;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/explorestack/iab/mraid/h;->c:Lcom/explorestack/iab/mraid/h;

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$i;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$i;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    new-instance v1, Lcom/explorestack/iab/mraid/j;

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->h:Landroid/content/MutableContextWrapper;

    invoke-direct {v1, v2, v0}, Lcom/explorestack/iab/mraid/j;-><init>(Landroid/content/Context;Lcom/explorestack/iab/mraid/j$b;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v1, p1}, Lcom/explorestack/iab/mraid/j;->c(Ljava/lang/String;)V

    move-object p1, v1

    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->n()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/explorestack/iab/mraid/g;->a(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_5

    const-string p1, "MRAIDView"

    const-string v0, "Can\'t add resized view because can\'t find required parent"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance v1, Lcom/explorestack/iab/view/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/explorestack/iab/view/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    invoke-virtual {v1, p0}, Lcom/explorestack/iab/view/a;->setCloseClickListener(Lcom/explorestack/iab/view/a$d;)V

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    invoke-virtual {p0, v0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/view/a;Lcom/explorestack/iab/mraid/j;)V

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/j;->b()Lcom/explorestack/iab/mraid/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/c;)V

    sget-object p1, Lcom/explorestack/iab/mraid/h;->d:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/h;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz p1, :cond_7

    invoke-interface {p1, p0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onExpand(Lcom/explorestack/iab/mraid/MraidView;)V

    :catch_0
    :cond_7
    return-void
.end method

.method public final b(IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    if-nez v0, :cond_0

    invoke-virtual {p3, p1, p2}, Lcom/explorestack/iab/mraid/j;->a(II)V

    iput-object p4, p0, Lcom/explorestack/iab/mraid/MraidView;->V:Ljava/lang/Runnable;

    const-wide/16 p1, 0x96

    invoke-virtual {p0, p4, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->W:Ljava/lang/Integer;

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 8

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->n()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v1}, Lcom/explorestack/iab/mraid/f;->a(II)Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-static {v0, p0}, Lcom/explorestack/iab/mraid/g;->b(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v2, v4, v6, v7, v0}, Lcom/explorestack/iab/mraid/f;->c(IIII)Z

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    aget v2, v1, v3

    aget v4, v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v2, v4, v6, v7}, Lcom/explorestack/iab/mraid/f;->b(IIII)Z

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    aget v2, v1, v3

    aget v1, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {v0, v2, v1, v3, p1}, Lcom/explorestack/iab/mraid/f;->a(IIII)Z

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/f;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/f;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->V:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz v1, :cond_1

    const-string v1, "tel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    invoke-interface {v0, p0, p1, p0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onOpenBrowser(Lcom/explorestack/iab/mraid/MraidView;Ljava/lang/String;Lcom/explorestack/iab/utils/IabClickCallback;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    sget-object v1, Lcom/explorestack/iab/mraid/h;->a:Lcom/explorestack/iab/mraid/h;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->q:Lcom/explorestack/iab/mraid/b;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/b;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->w:Lcom/explorestack/iab/mraid/d;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/d;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->a(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/j;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->b(Landroid/view/View;)V

    sget-object v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/h;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->m()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {p0, p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/view/a;Lcom/explorestack/iab/mraid/j;)V

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->v:Lcom/explorestack/iab/measurer/MraidAdMeasurer;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/iab/measurer/AdMeasurer;->onAdViewReady(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->x:Lcom/explorestack/iab/CacheControl;

    sget-object v1, Lcom/explorestack/iab/CacheControl;->FullLoad:Lcom/explorestack/iab/CacheControl;

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->E:Z

    if-nez v0, :cond_3

    const-string v0, "data:text/html,<html></html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->l()V

    :cond_3
    return-void
.end method

.method public canBeClosed()Z
    .locals 4

    invoke-virtual {p0}, Lcom/explorestack/iab/view/a;->getOnScreenTimeMs()J

    move-result-wide v0

    sget-wide v2, Lcom/explorestack/iab/mraid/g;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->F:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    invoke-super {p0}, Lcom/explorestack/iab/view/a;->canBeClosed()Z

    move-result v0

    return v0
.end method

.method public clickHandleCanceled()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    return-void
.end method

.method public clickHandleError()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    return-void
.end method

.method public clickHandled()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setLoadingVisible(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/mraid/MraidView;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/j;->a()V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    sget-object v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/h;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->y:Ljava/lang/String;

    invoke-static {}, Lcom/explorestack/iab/mraid/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/explorestack/iab/bridge/JsBridgeHandler;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/explorestack/iab/mraid/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "<script type=\'application/javascript\'>%s</script>%s%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "text/html"

    const-string v3, "UTF-8"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/explorestack/iab/mraid/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-static {}, Lcom/explorestack/iab/mraid/MraidLog;->a()Lcom/explorestack/iab/utils/Logger$LogLevel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/utils/Logger$LogLevel;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->o:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->s:Lcom/explorestack/iab/mraid/k;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/k;->a()V

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->m:Lcom/explorestack/iab/view/a;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->a()V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->a()V

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->T:Lcom/explorestack/iab/utils/l;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/l;->a()V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->l:Lcom/explorestack/iab/view/a;

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->c()Lcom/explorestack/iab/mraid/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget-object v0, Lcom/explorestack/iab/mraid/h;->b:Lcom/explorestack/iab/mraid/h;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->setViewState(Lcom/explorestack/iab/mraid/h;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->G:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->i()V

    return-void

    :cond_0
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$g;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$g;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/explorestack/iab/mraid/MraidView$k;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/MraidView$k;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    :goto_0
    new-instance v1, Lcom/explorestack/iab/mraid/MraidView$h;

    invoke-direct {v1, p0, v0}, Lcom/explorestack/iab/mraid/MraidView$h;-><init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/j;)V

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->r:Lcom/explorestack/iab/mraid/f;

    invoke-virtual {v2}, Lcom/explorestack/iab/mraid/f;->e()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/explorestack/iab/utils/Utils;->getDefaultClickPoint(Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->a(IILcom/explorestack/iab/mraid/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->w:Lcom/explorestack/iab/mraid/d;

    sget-object v1, Lcom/explorestack/iab/mraid/d;->b:Lcom/explorestack/iab/mraid/d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    sget-object v1, Lcom/explorestack/iab/mraid/h;->a:Lcom/explorestack/iab/mraid/h;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->I:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->u:Lcom/explorestack/iab/mraid/MraidViewListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/explorestack/iab/mraid/MraidViewListener;->onLoaded(Lcom/explorestack/iab/mraid/MraidView;)V

    :cond_1
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/explorestack/iab/mraid/MraidView$b;->a:[I

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->x:Lcom/explorestack/iab/CacheControl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->l()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->t:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->l()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/j;->h()V

    return-void
.end method

.method public final n()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->peekActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->O:Lcom/explorestack/iab/view/a$d;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/view/a;->setCloseClickListener(Lcom/explorestack/iab/view/a$d;)V

    iget v0, p0, Lcom/explorestack/iab/mraid/MraidView;->B:F

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/explorestack/iab/view/a;->setCloseVisibility(ZF)V

    return-void
.end method

.method public onCloseClick()V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->f()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->orientationToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MRAIDView"

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/explorestack/iab/mraid/MraidView$j;

    invoke-direct {p1, p0}, Lcom/explorestack/iab/mraid/MraidView$j;-><init>(Lcom/explorestack/iab/mraid/MraidView;)V

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->onUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCountDownFinish()V
    .locals 2

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->M:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/MraidView;->H:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/explorestack/iab/mraid/MraidView;->D:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->i()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->p:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public peekActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setLastInteractedActivity(Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->o:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->h:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setLoadingVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->n:Lcom/explorestack/iab/utils/h;

    if-nez p1, :cond_0

    new-instance p1, Lcom/explorestack/iab/utils/h;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/explorestack/iab/utils/h;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->n:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView;->R:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {p1, v0, p0, v1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->n:Lcom/explorestack/iab/utils/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/g;->a(I)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->n:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->a()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->n:Lcom/explorestack/iab/utils/h;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/utils/g;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setViewState(Lcom/explorestack/iab/mraid/h;)V
    .locals 1

    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->i:Lcom/explorestack/iab/mraid/h;

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/h;)V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->k:Lcom/explorestack/iab/mraid/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/j;->a(Lcom/explorestack/iab/mraid/h;)V

    :cond_0
    sget-object v0, Lcom/explorestack/iab/mraid/h;->e:Lcom/explorestack/iab/mraid/h;

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public show(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->K:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/explorestack/iab/mraid/MraidView$b;->a:[I

    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView;->x:Lcom/explorestack/iab/CacheControl;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->o()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->o()V

    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->t:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->t:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {p0, p0, v0}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/view/a;Lcom/explorestack/iab/mraid/j;)V

    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/MraidView;->m()V

    :cond_6
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->setLastInteractedActivity(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/explorestack/iab/mraid/MraidView;->j:Lcom/explorestack/iab/mraid/j;

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/j;->b()Lcom/explorestack/iab/mraid/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/mraid/MraidView;->a(Lcom/explorestack/iab/mraid/c;)V

    return-void
.end method
