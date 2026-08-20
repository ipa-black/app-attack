.class public Lcom/appodeal/ads/TestActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/BannerCallbacks;
.implements Lcom/appodeal/ads/MrecCallbacks;
.implements Lcom/appodeal/ads/NativeCallbacks;
.implements Lcom/appodeal/ads/RewardedVideoCallbacks;
.implements Lcom/appodeal/ads/InterstitialCallbacks;


# instance fields
.field public a:I

.field public b:Z

.field public c:Landroid/widget/ListView;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Z

.field public f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

.field public g:Lcom/appodeal/ads/NativeAd;

.field public h:Lcom/appodeal/ads/r;

.field public i:Z

.field public j:Landroid/app/ProgressDialog;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/TestActivity;->h:Lcom/appodeal/ads/r;

    return-void
.end method

.method public static a()V
    .locals 5

    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/w0;

    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/k2;

    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v2

    check-cast v2, Lcom/appodeal/ads/r1;

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/q5;

    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v4

    check-cast v4, Lcom/appodeal/ads/n4;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()V

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->y()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->c()V

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->y()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/appodeal/ads/r;->c()V

    invoke-virtual {v2}, Lcom/appodeal/ads/r;->y()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/appodeal/ads/r;->c()V

    invoke-virtual {v3}, Lcom/appodeal/ads/r;->y()V

    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/appodeal/ads/r;->c()V

    invoke-virtual {v4}, Lcom/appodeal/ads/r;->y()V

    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/appodeal/ads/TestActivity$d;

    invoke-direct {v0, p0, p1}, Lcom/appodeal/ads/TestActivity$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lcom/appodeal/ads/h5;->a:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 14

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->e()V

    :cond_0
    sget-object v0, Lcom/appodeal/ads/context/g;->b:Lcom/appodeal/ads/context/g;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appodeal/ads/context/g;->setApplicationContext(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/appodeal/ads/context/g;->setActivity(Landroid/app/Activity;)V

    iget v0, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appodeal/ads/q4;->b(IZ)V

    iget v0, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/appodeal/ads/q4;->a(IZ)V

    iget v0, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/16 v3, 0x200

    const/16 v4, 0x100

    const/4 v5, 0x4

    if-eq v0, v1, :cond_6

    const/4 v6, 0x2

    if-eq v0, v6, :cond_5

    if-eq v0, v5, :cond_4

    const/16 v6, 0x80

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/appodeal/ads/Native;->a()Lcom/appodeal/ads/Native$a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/appodeal/ads/h2;->a()Lcom/appodeal/ads/h2$b;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/appodeal/ads/o4;->a()Lcom/appodeal/ads/o4$b;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/appodeal/ads/t0;->a()Lcom/appodeal/ads/t0$b;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/TestActivity;->h:Lcom/appodeal/ads/r;

    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->h:Lcom/appodeal/ads/r;

    if-nez v0, :cond_7

    iput v2, p0, Lcom/appodeal/ads/TestActivity;->a:I

    :cond_7
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v7

    const/high16 v8, 0x41800000    # 16.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v1, v7, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v9

    const/high16 v10, 0x42400000    # 48.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v7, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v9, 0x10

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {p0}, Lcom/appodeal/ads/n5;->d(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v11

    invoke-virtual {v1, v11}, Landroid/view/View;->setId(I)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/ListView;

    invoke-direct {v7, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v7, v13, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v12, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v12, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v7, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 v12, -0x2

    if-nez v7, :cond_8

    const-string v7, "CHOOSE AD TYPE"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Lcom/appodeal/ads/utils/b;

    invoke-direct {v7, p0}, Lcom/appodeal/ads/utils/b;-><init>(Landroid/content/Context;)V

    iget-object v13, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v13, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    new-instance v13, Lcom/appodeal/ads/TestActivity$a;

    invoke-direct {v13, p0}, Lcom/appodeal/ads/TestActivity$a;-><init>(Lcom/appodeal/ads/TestActivity;)V

    invoke-virtual {v7, v13}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v7, Landroid/widget/CheckBox;

    invoke-direct {v7, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iget-boolean v13, p0, Lcom/appodeal/ads/TestActivity;->b:Z

    invoke-virtual {v7, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const-string v13, "test"

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v1, Lcom/appodeal/ads/TestActivity$b;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/TestActivity$b;-><init>(Lcom/appodeal/ads/TestActivity;)V

    invoke-virtual {v7, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v9

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-direct {v1, v12, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0xb

    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-static {p0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v9

    mul-float/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-virtual {v1, v2, v2, v8, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_8
    const-string v7, "CHOOSE AD ITEM"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1
    iget-object v1, p0, Lcom/appodeal/ads/TestActivity;->h:Lcom/appodeal/ads/r;

    .line 2
    iget-object v1, v1, Lcom/appodeal/ads/r;->a:Ljava/util/ArrayList;

    .line 3
    invoke-static {v1, v2}, Lcom/appodeal/ads/c1;->a(Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v7, Ljava/util/ArrayList;

    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance v1, Lcom/appodeal/ads/utils/a0;

    invoke-direct {v1, p0, v7}, Lcom/appodeal/ads/utils/a0;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v7, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    new-instance v7, Lcom/appodeal/ads/TestActivity$c;

    invoke-direct {v7, p0}, Lcom/appodeal/ads/TestActivity$c;-><init>(Lcom/appodeal/ads/TestActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :goto_2
    iget-object v1, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    const-string v8, "#DD000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v7, "Press back to hide"

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v8, 0xe

    invoke-virtual {v7, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0x32

    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v7, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget v1, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/16 v2, 0xc

    if-eq v1, v5, :cond_b

    if-eq v1, v4, :cond_a

    if-eq v1, v3, :cond_9

    goto :goto_4

    :cond_9
    new-instance v1, Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    invoke-direct {v1, p0}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/appodeal/ads/TestActivity;->f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/appodeal/ads/TestActivity;->f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_a
    invoke-static {p0}, Lcom/appodeal/ads/q4;->b(Landroid/content/Context;)Lcom/appodeal/ads/MrecView;

    move-result-object v1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v4

    const/high16 v6, 0x43960000    # 300.0f

    mul-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {p0}, Lcom/appodeal/ads/f1;->l(Landroid/content/Context;)F

    move-result v6

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3}, Lcom/appodeal/ads/MrecView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_b
    invoke-static {p0}, Lcom/appodeal/ads/q4;->a(Landroid/content/Context;)Lcom/appodeal/ads/BannerView;

    move-result-object v1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v1, v3}, Lcom/appodeal/ads/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_4
    iget-object v1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/BannerCallbacks;)V

    invoke-static {p0}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/MrecCallbacks;)V

    invoke-static {p0}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/InterstitialCallbacks;)V

    invoke-static {p0}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/RewardedVideoCallbacks;)V

    invoke-static {p0}, Lcom/appodeal/ads/q4;->a(Lcom/appodeal/ads/NativeCallbacks;)V

    return-void
.end method

.method public final c()V
    .locals 3

    const/16 v0, 0x40

    invoke-static {p0, v0}, Lcom/appodeal/ads/q4;->b(Landroid/app/Activity;I)V

    const/16 v0, 0x100

    invoke-static {p0, v0}, Lcom/appodeal/ads/q4;->b(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->g:Lcom/appodeal/ads/NativeAd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    invoke-virtual {v0}, Lcom/appodeal/ads/NativeAdView;->unregisterViewForInteraction()V

    iput-object v1, p0, Lcom/appodeal/ads/TestActivity;->f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/TestActivity;->g:Lcom/appodeal/ads/NativeAd;

    :cond_1
    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/appodeal/ads/TestActivity;->e:Z

    iput-boolean v1, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appodeal/ads/TestActivity;->j:Landroid/app/ProgressDialog;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->i:Z

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->i:Z

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appodeal/ads/TestActivity;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->j:Landroid/app/ProgressDialog;

    const-string v1, "Loading"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/appodeal/ads/TestActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->c()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/appodeal/ads/TestActivity;->a:I

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->b()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/appodeal/ads/q4;->d:Lcom/appodeal/ads/TestActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onBannerClicked()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Banner clicked"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onBannerExpired()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Banner expired"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onBannerFailedToLoad()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Banner failed to load"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBannerLoaded(IZ)V
    .locals 0

    iget-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    const/16 p1, 0x40

    .line 1
    const-string p2, "default"

    invoke-static {p0, p1, p2}, Lcom/appodeal/ads/q4;->a(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x100

    if-eq p1, p2, :cond_0

    const/16 p2, 0x200

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->e:Z

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 4
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 5
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    const-string p2, "Banner failed to load"

    invoke-static {p1, p2}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onBannerShowFailed()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Banner show failed"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onBannerShown()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Banner shown"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1
    invoke-static {}, Lcom/appodeal/ads/o1;->a()Lcom/appodeal/ads/o1$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/r1;

    invoke-static {}, Lcom/appodeal/ads/w2;->a()Lcom/appodeal/ads/w2$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appodeal/ads/u;->f()Lcom/appodeal/ads/r;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/q5;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->c()V

    invoke-virtual {v1}, Lcom/appodeal/ads/r;->y()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->c()V

    invoke-virtual {v0}, Lcom/appodeal/ads/r;->y()V

    .line 2
    :cond_1
    sput-object p0, Lcom/appodeal/ads/q4;->d:Lcom/appodeal/ads/TestActivity;

    if-eqz p1, :cond_2

    const-string v0, "adType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const-string v0, "test"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->b:Z

    const-string v0, "spinnerShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->i:Z

    :cond_2
    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->b()V

    return-void
.end method

.method public final onInterstitialClicked()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Interstitial clicked"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onInterstitialClosed()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Interstitial closed"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->c()V

    return-void
.end method

.method public final onInterstitialExpired()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Interstitial expired"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onInterstitialFailedToLoad()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Interstitial failed to load"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onInterstitialLoaded(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->e:Z

    const/4 p1, 0x3

    .line 1
    const-string v0, "default"

    invoke-static {p0, p1, v0}, Lcom/appodeal/ads/q4;->a(Landroid/app/Activity;ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final onInterstitialShowFailed()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Interstitial show failed"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onInterstitialShown()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Interstitial shown"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onMrecClicked()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Mrec clicked"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onMrecExpired()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Mrec expired"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onMrecFailedToLoad()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Mrec failed to load"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onMrecLoaded(Z)V
    .locals 2

    iget-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    .line 1
    const-string p1, "default"

    const/16 v0, 0x100

    invoke-static {p0, v0, p1}, Lcom/appodeal/ads/q4;->a(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget p1, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->e:Z

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 4
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 5
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 6
    const-string v0, "Mrec failed to load"

    invoke-static {p1, v0}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onMrecShowFailed()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Mrec show failed"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onMrecShown()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Mrec shown"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onNativeClicked(Lcom/appodeal/ads/NativeAd;)V
    .locals 1

    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    const-string v0, "Native ad clicked"

    invoke-static {p1, v0}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onNativeExpired()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Native ad expired"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onNativeFailedToLoad()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Native ad failed to load"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onNativeLoaded()V
    .locals 5

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/appodeal/ads/q4;->a(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1
    iget v2, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    const/16 v3, 0x100

    if-eq v2, v3, :cond_0

    const/16 v3, 0x200

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->e:Z

    .line 2
    :goto_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/NativeAd;

    iput-object v0, p0, Lcom/appodeal/ads/TestActivity;->g:Lcom/appodeal/ads/NativeAd;

    new-instance v0, Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    iget-object v1, p0, Lcom/appodeal/ads/TestActivity;->g:Lcom/appodeal/ads/NativeAd;

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;-><init>(Landroid/content/Context;Lcom/appodeal/ads/NativeAd;)V

    iput-object v0, p0, Lcom/appodeal/ads/TestActivity;->f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/appodeal/ads/TestActivity;->d:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/appodeal/ads/TestActivity;->f:Lcom/appodeal/ads/native_ad/views/NativeAdViewContentStream;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 3
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 4
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    const-string v1, "Native ad failed to load"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final onNativeShowFailed(Lcom/appodeal/ads/NativeAd;)V
    .locals 1

    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    const-string v0, "Native show failed"

    invoke-static {p1, v0}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onNativeShown(Lcom/appodeal/ads/NativeAd;)V
    .locals 1

    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    const-string v0, "Native ad shown"

    invoke-static {p1, v0}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedVideoClicked()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Rewarded video clicked"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedVideoClosed(Z)V
    .locals 1

    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    const-string v0, "Rewarded video closed"

    invoke-static {p1, v0}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->c()V

    return-void
.end method

.method public final onRewardedVideoExpired()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Rewarded video expired"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedVideoFailedToLoad()V
    .locals 2

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Rewarded video failed to load"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoFinished(DLjava/lang/String;)V
    .locals 0

    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    const-string p2, "Rewarded video finished"

    invoke-static {p1, p2}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedVideoLoaded(Z)V
    .locals 1

    iget-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->k:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->d()V

    const/16 p1, 0x80

    .line 1
    const-string v0, "default"

    invoke-static {p0, p1, v0}, Lcom/appodeal/ads/q4;->a(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/appodeal/ads/TestActivity;->e:Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 3
    iget-object p1, p1, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 4
    invoke-virtual {p1}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    const-string v0, "Rewarded video failed to load"

    invoke-static {p1, v0}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRewardedVideoShowFailed()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Rewarded video show failed"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onRewardedVideoShown()V
    .locals 2

    sget-object v0, Lcom/appodeal/ads/context/b;->b:Lcom/appodeal/ads/context/b;

    .line 1
    iget-object v0, v0, Lcom/appodeal/ads/context/b;->a:Lcom/appodeal/ads/context/f;

    .line 2
    invoke-virtual {v0}, Lcom/appodeal/ads/context/f;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    const-string v1, "Rewarded video shown"

    invoke-static {v0, v1}, Lcom/appodeal/ads/TestActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/appodeal/ads/TestActivity;->c()V

    iget v0, p0, Lcom/appodeal/ads/TestActivity;->a:I

    const-string v1, "adType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->b:Z

    const-string v1, "test"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/appodeal/ads/TestActivity;->i:Z

    const-string v1, "spinnerShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
