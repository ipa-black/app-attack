.class public Lcom/criteo/publisher/advancednative/b;
.super Ljava/lang/Object;
.source "AdChoiceOverlay.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/n0/g;

.field private final c:Lcom/criteo/publisher/n0/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/g;Lcom/criteo/publisher/n0/c;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/criteo/publisher/advancednative/b;->a:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/criteo/publisher/advancednative/b;->b:Lcom/criteo/publisher/n0/g;

    .line 55
    iput-object p2, p0, Lcom/criteo/publisher/advancednative/b;->c:Lcom/criteo/publisher/n0/c;

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 4

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 81
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x5

    .line 94
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 95
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/b;->c:Lcom/criteo/publisher/n0/c;

    iget-object v3, p0, Lcom/criteo/publisher/advancednative/b;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v3}, Lcom/criteo/publisher/n0/g;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/criteo/publisher/n0/c;->a(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 96
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/b;->c:Lcom/criteo/publisher/n0/c;

    iget-object v3, p0, Lcom/criteo/publisher/advancednative/b;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v3}, Lcom/criteo/publisher/n0/g;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/criteo/publisher/n0/c;->a(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 97
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 98
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 106
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setElevation(F)V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 110
    iget-object p1, p0, Lcom/criteo/publisher/advancednative/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method b(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/criteo/publisher/advancednative/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 129
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    return-object p1
.end method

.method c(Landroid/view/View;)Landroid/view/View;
    .locals 1

    .line 142
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/advancednative/b;->b(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 146
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
