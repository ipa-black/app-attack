.class public Lcom/explorestack/iab/vast/activity/VastView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/utils/IabClickCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/vast/activity/VastView$z;,
        Lcom/explorestack/iab/vast/activity/VastView$b0;,
        Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;,
        Lcom/explorestack/iab/vast/activity/VastView$y;,
        Lcom/explorestack/iab/vast/activity/VastView$a0;,
        Lcom/explorestack/iab/vast/activity/VastView$c0;
    }
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:Z

.field public final N:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/iab/utils/g<",
            "+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field public final P:Ljava/lang/Runnable;

.field public final Q:Ljava/lang/Runnable;

.field public final R:Lcom/explorestack/iab/vast/activity/VastView$b0;

.field public final S:Lcom/explorestack/iab/vast/activity/VastView$b0;

.field public final T:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public U:I

.field public V:F

.field public final W:Lcom/explorestack/iab/vast/activity/VastView$b0;

.field public final a:Ljava/lang/String;

.field public final a0:Landroid/view/TextureView$SurfaceTextureListener;

.field public b:Lcom/explorestack/iab/vast/view/a;

.field public final b0:Landroid/media/MediaPlayer$OnCompletionListener;

.field public c:Landroid/widget/FrameLayout;

.field public final c0:Landroid/media/MediaPlayer$OnErrorListener;

.field public d:Landroid/view/Surface;

.field public final d0:Landroid/media/MediaPlayer$OnPreparedListener;

.field public e:Landroid/widget/FrameLayout;

.field public final e0:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field public f:Lcom/explorestack/iab/view/a;

.field public f0:Lcom/explorestack/iab/vast/b$b;

.field public g:Lcom/explorestack/iab/utils/d;

.field public final g0:Landroid/view/View$OnTouchListener;

.field public h:Lcom/explorestack/iab/utils/e;

.field public final h0:Landroid/webkit/WebChromeClient;

.field public i:Lcom/explorestack/iab/utils/k;

.field public final i0:Landroid/webkit/WebViewClient;

.field public j:Lcom/explorestack/iab/utils/i;

.field public k:Lcom/explorestack/iab/utils/h;

.field public l:Lcom/explorestack/iab/utils/j;

.field public m:Lcom/explorestack/iab/utils/f;

.field public n:Landroid/media/MediaPlayer;

.field public o:Landroid/view/View;

.field public p:Lcom/explorestack/iab/vast/tags/CompanionTag;

.field public q:Lcom/explorestack/iab/vast/tags/CompanionTag;

.field public r:Landroid/widget/ImageView;

.field public s:Lcom/explorestack/iab/mraid/MraidInterstitial;

.field public t:Lcom/explorestack/iab/vast/VastRequest;

.field public u:Lcom/explorestack/iab/vast/activity/VastView$c0;

.field public v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

.field public w:Lcom/explorestack/iab/vast/VastPlaybackListener;

.field public x:Lcom/explorestack/iab/measurer/VastAdMeasurer;

.field public y:Lcom/explorestack/iab/vast/activity/VastView$z;

.field public z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "VASTView-"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-instance p2, Lcom/explorestack/iab/vast/activity/VastView$c0;

    invoke-direct {p2}, Lcom/explorestack/iab/vast/activity/VastView$c0;-><init>()V

    iput-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/4 p2, 0x0

    iput p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->z:I

    iput p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:I

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->F:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->I:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->K:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->L:Z

    iput-boolean p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->M:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->N:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$b;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$b;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:Ljava/lang/Runnable;

    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$c;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$c;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->Q:Ljava/lang/Runnable;

    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$d;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$d;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->R:Lcom/explorestack/iab/vast/activity/VastView$b0;

    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$e;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$e;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->S:Lcom/explorestack/iab/vast/activity/VastView$b0;

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->T:Ljava/util/LinkedList;

    iput p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->U:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->V:F

    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$f;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$f;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->W:Lcom/explorestack/iab/vast/activity/VastView$b0;

    new-instance p3, Lcom/explorestack/iab/vast/activity/VastView$g;

    invoke-direct {p3, p0}, Lcom/explorestack/iab/vast/activity/VastView$g;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->a0:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$h;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$h;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->b0:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$i;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$i;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->c0:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$j;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$j;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->d0:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$l;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$l;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->e0:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$m;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$m;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f0:Lcom/explorestack/iab/vast/b$b;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$n;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$n;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g0:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$o;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$o;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h0:Landroid/webkit/WebChromeClient;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$p;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$p;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i0:Landroid/webkit/WebViewClient;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$k;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$k;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/explorestack/iab/vast/view/a;

    invoke-direct {v0, p1}, Lcom/explorestack/iab/vast/view/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Lcom/explorestack/iab/vast/view/a;

    invoke-virtual {v0, p3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Lcom/explorestack/iab/vast/view/a;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/FrameLayout;

    invoke-direct {p3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcom/explorestack/iab/view/a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/explorestack/iab/view/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic A(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    return p0
.end method

.method public static synthetic B(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    return-void
.end method

.method public static synthetic C(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->C()V

    return-void
.end method

.method public static synthetic D(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->s()V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;F)F
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->V:F

    return p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;I)I
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->B:I

    return p1
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->v()V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastAd;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastAd;Z)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;Lcom/explorestack/iab/vast/VastRequest;)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/explorestack/iab/vast/activity/VastView;I)I
    .locals 0

    iput p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->C:I

    return p1
.end method

.method public static synthetic b(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->d()V

    return-void
.end method

.method public static synthetic b(Lcom/explorestack/iab/vast/activity/VastView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->F:Z

    return p1
.end method

.method public static synthetic c(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$b0;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->R:Lcom/explorestack/iab/vast/activity/VastView$b0;

    return-object p0
.end method

.method public static synthetic c(Lcom/explorestack/iab/vast/activity/VastView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    return p1
.end method

.method public static synthetic d(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$b0;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->S:Lcom/explorestack/iab/vast/activity/VastView$b0;

    return-object p0
.end method

.method public static synthetic d(Lcom/explorestack/iab/vast/activity/VastView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$b0;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->W:Lcom/explorestack/iab/vast/activity/VastView$b0;

    return-object p0
.end method

.method public static synthetic e(Lcom/explorestack/iab/vast/activity/VastView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->I:Z

    return p1
.end method

.method public static synthetic f(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic f(Lcom/explorestack/iab/vast/activity/VastView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Z)V

    return-void
.end method

.method public static synthetic g(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->h()V

    return-void
.end method

.method private getAvailableHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getAvailableWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static synthetic h(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/VastPlaybackListener;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    return-object p0
.end method

.method public static synthetic i(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->T:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic j(Lcom/explorestack/iab/vast/activity/VastView;)Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    return-object p0
.end method

.method public static synthetic k(Lcom/explorestack/iab/vast/activity/VastView;)I
    .locals 0

    iget p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->U:I

    return p0
.end method

.method public static synthetic l(Lcom/explorestack/iab/vast/activity/VastView;)I
    .locals 2

    iget v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->U:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->U:I

    return v0
.end method

.method public static synthetic m(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->k()V

    return-void
.end method

.method public static synthetic n(Lcom/explorestack/iab/vast/activity/VastView;)F
    .locals 0

    iget p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->V:F

    return p0
.end method

.method public static synthetic o(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    return p0
.end method

.method public static synthetic p(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()V

    return-void
.end method

.method public static synthetic q(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    return-void
.end method

.method public static synthetic r(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->A()V

    return-void
.end method

.method public static synthetic s(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->w()V

    return-void
.end method

.method private setCloseControlsVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->K:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->y()V

    return-void
.end method

.method private setLoadingViewVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/g;->a(I)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->a()V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/utils/g;->a(I)V

    :goto_0
    return-void
.end method

.method private setMute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput-boolean p1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->z()V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->mute:Lcom/explorestack/iab/vast/TrackingEvent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->unmute:Lcom/explorestack/iab/vast/TrackingEvent;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    return-void
.end method

.method private setPlaceholderViewVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getPlaceholderTimeoutSec()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40400000    # 3.0f

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/view/a;->setCloseVisibility(ZF)V

    return-void
.end method

.method public static synthetic t(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->z()V

    return-void
.end method

.method public static synthetic u(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->i()V

    return-void
.end method

.method public static synthetic v(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->B()V

    return-void
.end method

.method public static synthetic w(Lcom/explorestack/iab/vast/activity/VastView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/vast/activity/VastView;->N:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic x(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->f()V

    return-void
.end method

.method public static synthetic y(Lcom/explorestack/iab/vast/activity/VastView;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->j()Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->g()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->v()V

    return-void
.end method

.method public final B()V
    .locals 2

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/vast/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    const-string v0, "onWindowFocusChanged"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    :goto_0
    return-void
.end method

.method public final C()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setMute(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/explorestack/iab/vast/tags/CompanionTag;)Landroid/view/View;
    .locals 9

    invoke-static {p1}, Lcom/explorestack/iab/utils/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/high16 v1, 0x44360000    # 728.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x43a00000    # 320.0f

    :goto_0
    invoke-static {p1, v1}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_3
    const/high16 v0, 0x42480000    # 50.0f

    :goto_1
    invoke-static {p1, v0}, Lcom/explorestack/iab/utils/Utils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/explorestack/iab/utils/Utils;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    const/high16 v3, 0x2000000

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->g0:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->i0:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->h0:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHtml()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v7, "utf-8"

    const/4 v8, 0x0

    const-string v4, ""

    const-string v6, "text/html"

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/explorestack/iab/utils/Utils;->generateViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public final a(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method public final a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {p2}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getAssetsColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->setStrokeColor(Ljava/lang/Integer;)V

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getAssetsBackgroundColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/explorestack/iab/utils/IabElementStyle;->hasStrokeColor()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getAssetsColor()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/explorestack/iab/utils/IabElementStyle;->setStrokeColor(Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {p2}, Lcom/explorestack/iab/utils/IabElementStyle;->hasFillColor()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getAssetsBackgroundColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->setFillColor(Ljava/lang/Integer;)V

    :cond_3
    return-object p2
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/utils/g;

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/g;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/vast/VastRequest;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_1

    invoke-interface {v0, p0, v1, p1}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onError(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Track Banner Event: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastAd;Z)V
    .locals 5

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getPreferredVideoOrientation()I

    move-result v1

    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->z:I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->getCtaStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->getCompanionTag()Lcom/explorestack/iab/vast/tags/CompanionTag;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Lcom/explorestack/iab/vast/tags/CompanionTag;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getBanner(Landroid/content/Context;)Lcom/explorestack/iab/vast/tags/CompanionTag;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Lcom/explorestack/iab/vast/tags/CompanionTag;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/a;)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Z)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/a;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->e(Lcom/explorestack/iab/vast/a;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->h(Lcom/explorestack/iab/vast/a;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->g(Lcom/explorestack/iab/vast/a;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->d(Lcom/explorestack/iab/vast/a;)V

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/a;)V

    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:Lcom/explorestack/iab/measurer/VastAdMeasurer;

    if-eqz v1, :cond_3

    invoke-interface {v1, p0}, Lcom/explorestack/iab/measurer/AdMeasurer;->registerAdContainer(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:Lcom/explorestack/iab/measurer/VastAdMeasurer;

    iget-object v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Lcom/explorestack/iab/vast/view/a;

    invoke-interface {v1, v4}, Lcom/explorestack/iab/measurer/AdMeasurer;->registerAdView(Landroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v4, v4, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:I

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->z:I

    :goto_2
    invoke-interface {v1, p0, p1, v4}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onOrientationRequested(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V

    :cond_5
    if-nez p3, :cond_a

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->L:Z

    iput-boolean v4, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    iget-boolean v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->M:Z

    iput-boolean v4, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->n:Z

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->isMuted()Z

    move-result v0

    iput-boolean v0, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->isForceUseNativeCloseTime()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getSkipOffsetSec()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getSkipOffsetSec()I

    move-result p2

    int-to-float p2, p2

    iput p2, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoCloseTime()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_8

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoCloseTime()F

    move-result v0

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/high16 v0, 0x40a00000    # 5.0f

    :goto_3
    iput v0, p2, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    :goto_4
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:Lcom/explorestack/iab/measurer/VastAdMeasurer;

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Lcom/explorestack/iab/vast/view/a;

    invoke-interface {p2, v0}, Lcom/explorestack/iab/measurer/AdMeasurer;->onAdViewReady(Landroid/view/View;)V

    :cond_9
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz p2, :cond_a

    invoke-interface {p2, p0, p1}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onShown(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object p1

    sget-object p2, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    if-eq p1, p2, :cond_b

    goto :goto_5

    :cond_b
    move v2, v3

    :goto_5
    invoke-direct {p0, v2}, Lcom/explorestack/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "load (restoring: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCloseStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/explorestack/iab/utils/d;

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$u;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$u;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/d;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/d;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCloseStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/d;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/a;Z)V
    .locals 2

    if-nez p2, :cond_3

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCtaStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p2

    invoke-virtual {p2}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Lcom/explorestack/iab/utils/f;

    if-nez p2, :cond_1

    new-instance p2, Lcom/explorestack/iab/utils/f;

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$t;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/vast/activity/VastView$t;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {p2, v0}, Lcom/explorestack/iab/utils/f;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Lcom/explorestack/iab/utils/f;

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCtaStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    iget-object p2, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Lcom/explorestack/iab/utils/f;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0, v1, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Lcom/explorestack/iab/utils/f;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_4
    :goto_1
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;Lcom/explorestack/iab/vast/VastRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x3

    invoke-interface {p1, p0, p2, v0}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onError(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, p0, p2, v0}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onFinish(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/vast/VastRequest;->fireUrls(Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v0, "\turl list is null"

    invoke-static {p1, v0}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/explorestack/iab/vast/TrackingEvent;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Processing Event - fail: %s (tracking event map is null or empty)"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getAvailableWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/explorestack/iab/vast/activity/VastView;->getAvailableHeight()I

    move-result v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v2}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getCompanion(II)Lcom/explorestack/iab/vast/tags/CompanionTag;

    move-result-object p1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->shouldUseScreenSizeForCompanionOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/explorestack/iab/utils/Utils;->orientationBySize(II)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->z:I

    :goto_0
    iput v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:I

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    :cond_2
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    goto/16 :goto_2

    :cond_3
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->r()V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getHtmlForMraid()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->getPostBannerTag()Lcom/explorestack/iab/vast/tags/PostBannerTag;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    new-instance v2, Lcom/explorestack/iab/vast/activity/VastView$y;

    invoke-direct {v2, p0, v0}, Lcom/explorestack/iab/vast/activity/VastView$y;-><init>(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/activity/VastView$k;)V

    invoke-static {}, Lcom/explorestack/iab/mraid/MraidInterstitial;->newBuilder()Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setBaseUrl(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    sget-object v3, Lcom/explorestack/iab/CacheControl;->FullLoad:Lcom/explorestack/iab/CacheControl;

    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCacheControl(Lcom/explorestack/iab/CacheControl;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseTime(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/VastRequest;->isForceUseNativeCloseTime()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setIsTag(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setListener(Lcom/explorestack/iab/mraid/MraidInterstitialListener;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    move-result-object v0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getCloseStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getCountDownStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setCountDownStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getLoadingStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setLoadingStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getProgressStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProgressStyle(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getDurationSec()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setDurationSec(F)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->getProductLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setProductLink(Ljava/lang/String;)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->isForceUseNativeClose()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->forceUseNativeCloseButton(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    :cond_5
    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->isR1()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR1(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->isR2()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->setR2(Z)Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/mraid/MraidInterstitial$Builder;->build(Landroid/content/Context;)Lcom/explorestack/iab/mraid/MraidInterstitial;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {v0, p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    :cond_7
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->g()V

    :cond_8
    :goto_2
    return-void
.end method

.method public final a(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/Boolean;Z)Z
    .locals 4

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->stopPlayback()V

    if-nez p3, :cond_0

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$c0;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/activity/VastView$c0;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string p2, "vastRequest.getVastAd() is null. Stop playing..."

    :goto_0
    invoke-static {p1, p2}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->e:Z

    :cond_2
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string p2, "VastRequest is null. Stop playing..."

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string p2, "VastAd is null. Stop playing..."

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getCacheControl()Lcom/explorestack/iab/CacheControl;

    move-result-object v0

    sget-object v2, Lcom/explorestack/iab/CacheControl;->PartialLoad:Lcom/explorestack/iab/CacheControl;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isVideoFileLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$q;

    invoke-direct {v0, p0, p3}, Lcom/explorestack/iab/vast/activity/VastView$q;-><init>(Lcom/explorestack/iab/vast/activity/VastView;Z)V

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/vast/VastRequest;->setVastFileLoadedListener(Lcom/explorestack/iab/vast/d;)V

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/a;)V

    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/activity/VastView;->setPlaceholderViewVisible(Z)V

    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getCacheControl()Lcom/explorestack/iab/CacheControl;

    move-result-object v0

    sget-object v2, Lcom/explorestack/iab/CacheControl;->Stream:Lcom/explorestack/iab/CacheControl;

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isVideoFileLoaded()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/explorestack/iab/vast/activity/VastView$r;

    invoke-direct {v0, p0, p3}, Lcom/explorestack/iab/vast/activity/VastView$r;-><init>(Lcom/explorestack/iab/vast/activity/VastView;Z)V

    invoke-virtual {p1, v0}, Lcom/explorestack/iab/vast/VastRequest;->setVastFileLoadedListener(Lcom/explorestack/iab/vast/d;)V

    invoke-virtual {p2}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/explorestack/iab/vast/activity/VastView;->f(Lcom/explorestack/iab/vast/a;)V

    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/activity/VastView;->setPlaceholderViewVisible(Z)V

    invoke-direct {p0, v3}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/explorestack/iab/vast/VastRequest;->performCache(Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/vast/processor/VastAd;Z)V

    :goto_1
    return v3
.end method

.method public final a(Lcom/explorestack/iab/vast/tags/CompanionTag;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getWrapperCompanionClickTrackingUrlList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getCompanionClickTrackingList()Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-nez v0, :cond_3

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_3
    invoke-virtual {p0, v1, p2}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processClickThroughEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->l:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {p1, p0, v0, p0, p2}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onClick(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Lcom/explorestack/iab/utils/IabClickCallback;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->y:Lcom/explorestack/iab/vast/activity/VastView$z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/activity/VastView$z;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->y:Lcom/explorestack/iab/vast/activity/VastView$z;

    :cond_0
    return-void
.end method

.method public final b(Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Track Companion Event: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/CompanionTag;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCountDownStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/e;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/e;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/explorestack/iab/utils/e;

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/e;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/e;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCountDownStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/e;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput-boolean v0, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->A:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v1, p0, v3, v2}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onOrientationRequested(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;I)V

    :cond_1
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_2
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/i;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_3
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/k;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->a()V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v1, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->n:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    :cond_5
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Lcom/explorestack/iab/vast/view/a;

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Z)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-nez p1, :cond_8

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    invoke-direct {v8, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/explorestack/iab/vast/activity/VastView$a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v7

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/explorestack/iab/vast/activity/VastView$a;-><init>(Lcom/explorestack/iab/vast/activity/VastView;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->y:Lcom/explorestack/iab/vast/activity/VastView$z;

    :cond_7
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->setCloseControlsVisible(Z)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->q()V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->m:Lcom/explorestack/iab/utils/f;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Lcom/explorestack/iab/utils/g;->a(I)V

    :cond_9
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->isReady()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    invoke-virtual {v0, p0, p1}, Lcom/explorestack/iab/mraid/MraidInterstitial;->showInView(Landroid/view/ViewGroup;Z)V

    goto :goto_0

    :cond_a
    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    goto :goto_0

    :cond_b
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->g()V

    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->stopPlayback()V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->bringToFront()V

    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->Q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lcom/explorestack/iab/vast/TrackingEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Track Event: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getTrackingEventListMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/Map;Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_1
    return-void
.end method

.method public final c(Lcom/explorestack/iab/vast/a;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->isVideoClickable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clickHandleCanceled()V
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isCompanionShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()V

    :goto_0
    return-void
.end method

.method public clickHandleError()V
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isCompanionShown()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->u()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->f()V

    :goto_0
    return-void
.end method

.method public clickHandled()V
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isCompanionShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->B:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->C:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->b:Lcom/explorestack/iab/vast/view/a;

    invoke-virtual {v2, v0, v1}, Lcom/explorestack/iab/vast/view/a;->a(II)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "configureVideoSurface - skip: videoWidth or videoHeight is 0"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Lcom/explorestack/iab/vast/a;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getLoadingStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/h;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/h;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/h;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/h;

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getLoadingStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->k:Lcom/explorestack/iab/utils/h;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    :cond_0
    return-void
.end method

.method public display(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/Boolean;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/Boolean;Z)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "handleClose"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isFinished()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onFinish(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getMuteStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/i;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/explorestack/iab/utils/i;

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$v;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$v;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/i;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/i;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getMuteStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/i;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "handleCompanionClose"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isFinished()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onFinish(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCountDownStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    invoke-virtual {v2, v1}, Lcom/explorestack/iab/view/a;->setCountDownStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCloseStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    invoke-virtual {v1, v0}, Lcom/explorestack/iab/view/a;->setCloseStyle(Lcom/explorestack/iab/utils/IabElementStyle;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$s;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$s;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/view/a;->setCloseClickListener(Lcom/explorestack/iab/view/a$d;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Lcom/explorestack/iab/vast/a;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "handleCompanionShowError"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(I)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->m()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->b(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isFinished()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onFinish(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getProgressStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    new-instance v0, Lcom/explorestack/iab/utils/j;

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/j;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getProgressStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->l:Lcom/explorestack/iab/utils/j;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/explorestack/iab/utils/j;->a(FII)V

    :cond_4
    :goto_1
    return-void
.end method

.method public getListener()Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    return-object v0
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "handleComplete"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    iget-boolean v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Z

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    if-nez v2, :cond_3

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, p0, v1}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onComplete(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoCompleted()V

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->isR2()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->l:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->j()Z

    :cond_2
    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->complete:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->l()V

    :cond_4
    return-void
.end method

.method public final h(Lcom/explorestack/iab/vast/a;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getRepeatStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->isVisible()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/explorestack/iab/utils/k;

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$w;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/vast/activity/VastView$w;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-direct {v0, v1}, Lcom/explorestack/iab/utils/k;-><init>(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/k;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getRepeatStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/a;Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/k;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2, p1}, Lcom/explorestack/iab/utils/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/explorestack/iab/utils/IabElementStyle;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->i:Lcom/explorestack/iab/utils/k;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/g;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleBackPress()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    invoke-virtual {v0}, Lcom/explorestack/iab/view/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f:Lcom/explorestack/iab/view/a;

    invoke-virtual {v0}, Lcom/explorestack/iab/view/a;->canBeClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;Lcom/explorestack/iab/vast/VastRequest;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isSkipEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isCompanionShown()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->o()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/vast/VideoType;->NonRewarded:Lcom/explorestack/iab/vast/VideoType;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->dispatchClose()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->f()V

    :cond_5
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "handleImpressions"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->k:Z

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getImpressionUrlList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public final i(Lcom/explorestack/iab/vast/a;)V
    .locals 13

    sget-object v0, Lcom/explorestack/iab/utils/Assets;->defVideoStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getVideoStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/IabElementStyle;->copyWith(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->isVideoClickable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    new-instance v3, Lcom/explorestack/iab/vast/activity/VastView$x;

    invoke-direct {v3, p0}, Lcom/explorestack/iab/vast/activity/VastView$x;-><init>(Lcom/explorestack/iab/vast/activity/VastView;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :goto_1
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->q()V

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Lcom/explorestack/iab/vast/tags/CompanionTag;

    const/16 v3, 0xd

    const/4 v4, -0x1

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v2, v2, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-nez v2, :cond_8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/explorestack/iab/vast/activity/VastView;->p:Lcom/explorestack/iab/vast/tags/CompanionTag;

    invoke-virtual {p0, v2, v5}, Lcom/explorestack/iab/vast/activity/VastView;->a(Landroid/content/Context;Lcom/explorestack/iab/vast/tags/CompanionTag;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getStyle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "inline"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v3, Lcom/explorestack/iab/utils/Assets;->defInlineBannerStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0xc

    const/16 v10, 0xa

    const/16 v11, 0xb

    const/16 v12, 0x9

    if-ne v6, v8, :cond_4

    const/16 v6, 0xf

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getHorizontalPosition()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_3

    invoke-virtual {v2, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_4
    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/IabElementStyle;->getVerticalPosition()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0x30

    if-ne v1, v4, :cond_5

    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_2

    :cond_6
    sget-object v1, Lcom/explorestack/iab/utils/Assets;->defBannerStyle:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v3, v1

    :goto_2
    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/explorestack/iab/vast/a;->getCtaStyle()Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/explorestack/iab/utils/IabElementStyle;->copyWith(Lcom/explorestack/iab/utils/IabElementStyle;)Lcom/explorestack/iab/utils/IabElementStyle;

    move-result-object v3

    :cond_7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v3, p1, v1}, Lcom/explorestack/iab/utils/IabElementStyle;->applyPadding(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v3, p1, v5}, Lcom/explorestack/iab/utils/IabElementStyle;->applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v3, v5}, Lcom/explorestack/iab/utils/IabElementStyle;->applyRelativeAlignment(Landroid/widget/RelativeLayout$LayoutParams;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {v3}, Lcom/explorestack/iab/utils/IabElementStyle;->getFillColor()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v1}, Lcom/explorestack/iab/utils/IabElementStyle;->applyPadding(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/explorestack/iab/utils/IabElementStyle;->applyMargin(Landroid/content/Context;Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    invoke-virtual {p0, p1, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lcom/explorestack/iab/vast/TrackingEvent;->creativeView:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/TrackingEvent;)V

    goto :goto_3

    :cond_8
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-void
.end method

.method public isCompanionShown()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    return v0
.end method

.method public isFinished()Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getCompanionCloseTime()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->e:Z

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPlaybackStarted()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->I:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSkipEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->i:Z

    if-nez v1, :cond_1

    iget v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isVideoFileLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->checkFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Z
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "handleInfoClicked"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getClickTrackingUrlList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "handlePlaybackError"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Z

    const/16 v0, 0x195

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->a(I)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->l()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "finishVideoPlaying"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->stopPlayback()V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->isAutoClose()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->getPostBannerTag()Lcom/explorestack/iab/vast/tags/PostBannerTag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isSkipEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->close:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->q()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->u()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    :goto_1
    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->r()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidInterstitial;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/mraid/MraidInterstitial;

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->q:Lcom/explorestack/iab/vast/tags/CompanionTag;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    return-void
.end method

.method public mute()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setMute(Z)V

    return-void
.end method

.method public final n()V
    .locals 2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "pausePlayback"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->c()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->a()V

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->pause:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoPaused()V

    :cond_0
    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "performVideoCloseClick"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->stopPlayback()V

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->h:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->skip:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoSkipped()V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getMaxDurationMillis()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVideoType()Lcom/explorestack/iab/vast/VideoType;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/vast/VideoType;->Rewarded:Lcom/explorestack/iab/vast/VideoType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-interface {v0, p0, v1}, Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;->onComplete(Lcom/explorestack/iab/vast/activity/VastView;Lcom/explorestack/iab/vast/VastRequest;)V

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoCompleted()V

    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->l()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->e()V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "onAttachedToWindow"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/a;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->stopPlayback()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/explorestack/iab/vast/activity/VastView$a0;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcom/explorestack/iab/vast/activity/VastView$a0;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView$a0;->a:Lcom/explorestack/iab/vast/activity/VastView$c0;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView$c0;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/explorestack/iab/vast/c;->a(Ljava/lang/String;)Lcom/explorestack/iab/vast/VastRequest;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/Boolean;Z)Z

    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/explorestack/iab/vast/activity/VastView$a0;

    invoke-direct {v1, v0}, Lcom/explorestack/iab/vast/activity/VastView$a0;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput-object v0, v1, Lcom/explorestack/iab/vast/activity/VastView$a0;->a:Lcom/explorestack/iab/vast/activity/VastView$c0;

    return-object v1
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->P:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onWindowFocusChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->B()V

    return-void
.end method

.method public final p()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->b0:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->c0:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->d0:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->e0:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->d:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isVideoFileLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getFileUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/processor/VastAd;->getPickedMediaFileTag()Lcom/explorestack/iab/vast/tags/MediaFileTag;

    move-result-object v1

    invoke-virtual {v1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->k()V

    :cond_3
    :goto_2
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setCanAutoResume(Z)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->n()V

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->removeFromParent(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->o:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->b()V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->r:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setCanAutoResume(Z)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->t()V

    return-void
.end method

.method public final s()V
    .locals 2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    iput v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->d:I

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->m()V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->t:Lcom/explorestack/iab/vast/VastRequest;

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/VastRequest;->getVastAd()Lcom/explorestack/iab/vast/processor/VastAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/iab/vast/processor/VastAd;->getAppodealExtension()Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->i(Lcom/explorestack/iab/vast/a;)V

    const-string v0, "restartPlayback"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public setAdMeasurer(Lcom/explorestack/iab/measurer/VastAdMeasurer;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->x:Lcom/explorestack/iab/measurer/VastAdMeasurer;

    return-void
.end method

.method public setCanAutoResume(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->L:Z

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput-boolean p1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    return-void
.end method

.method public setCanIgnorePostBanner(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->M:Z

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput-boolean p1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->n:Z

    return-void
.end method

.method public setListener(Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->v:Lcom/explorestack/iab/vast/activity/VastView$VastViewListener;

    return-void
.end method

.method public setPlaybackListener(Lcom/explorestack/iab/vast/VastPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    return-void
.end method

.method public startPlayback(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startPlayback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isLoaded()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/activity/VastView;->setPlaceholderViewVisible(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->u()V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->F:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->stopPlayback()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->m()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->d()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->p()V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->f0:Lcom/explorestack/iab/vast/b$b;

    invoke-static {p0, v0}, Lcom/explorestack/iab/vast/b;->a(Landroid/view/View;Lcom/explorestack/iab/vast/b$b;)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->G:Z

    :goto_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->E:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v2, "stopPlayback"

    invoke-static {v0, v2}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->I:Z

    iput-boolean v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->J:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->c()V

    invoke-static {p0}, Lcom/explorestack/iab/vast/b;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final t()V
    .locals 3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v1, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->m:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-direct {p0, v2}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-nez v0, :cond_1

    const-string v0, "resumePlayback (canAutoResume: false)"

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->D:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->a:Ljava/lang/String;

    const-string v1, "resumePlayback"

    invoke-static {v0, v1}, Lcom/explorestack/iab/vast/VastLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iput-boolean v2, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->g:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->A()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->w()V

    invoke-direct {p0, v2}, Lcom/explorestack/iab/vast/activity/VastView;->setLoadingViewVisibility(Z)V

    sget-object v0, Lcom/explorestack/iab/vast/TrackingEvent;->resume:Lcom/explorestack/iab/vast/TrackingEvent;

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/TrackingEvent;)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoResumed()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->j:Z

    if-nez v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/explorestack/iab/vast/activity/VastView;->startPlayback(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->b(Z)V

    return-void
.end method

.method public unmute()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/explorestack/iab/vast/activity/VastView;->setMute(Z)V

    return-void
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->O:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/explorestack/iab/utils/g;

    invoke-virtual {v1}, Lcom/explorestack/iab/utils/g;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 1

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->x()V

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->c()V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->Q:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final x()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->T:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->U:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->V:F

    return-void
.end method

.method public final y()V
    .locals 5

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->K:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    move v2, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isSkipEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->H:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/explorestack/iab/vast/activity/VastView;->g:Lcom/explorestack/iab/utils/d;

    const/16 v4, 0x8

    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    invoke-virtual {v3, v2}, Lcom/explorestack/iab/utils/g;->a(I)V

    :cond_4
    iget-object v2, p0, Lcom/explorestack/iab/vast/activity/VastView;->h:Lcom/explorestack/iab/utils/e;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Lcom/explorestack/iab/utils/g;->a(I)V

    :cond_6
    return-void
.end method

.method public final z()V
    .locals 2

    invoke-virtual {p0}, Lcom/explorestack/iab/vast/activity/VastView;->isPlaybackStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->j:Lcom/explorestack/iab/utils/i;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v1, v1, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    invoke-virtual {v0, v1}, Lcom/explorestack/iab/utils/i;->a(Z)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->u:Lcom/explorestack/iab/vast/activity/VastView$c0;

    iget-boolean v0, v0, Lcom/explorestack/iab/vast/activity/VastView$c0;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->n:Landroid/media/MediaPlayer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lcom/explorestack/iab/vast/activity/VastView;->w:Lcom/explorestack/iab/vast/VastPlaybackListener;

    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0, v1}, Lcom/explorestack/iab/vast/VastPlaybackListener;->onVideoVolumeChanged(F)V

    :cond_2
    :goto_1
    return-void
.end method
