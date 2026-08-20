.class public Lcom/explorestack/iab/vast/tags/PostBannerTag;
.super Lcom/explorestack/iab/vast/tags/VastXmlTag;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z = true


# instance fields
.field public final c:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final d:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final e:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final f:Lcom/explorestack/iab/utils/IabElementStyle;

.field public g:Ljava/lang/String;

.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/explorestack/iab/vast/tags/VastXmlTag;-><init>()V

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->d:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    const/4 v0, 0x0

    iput v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->h:F

    iput v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->i:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->k:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->l:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->m:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->n:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Postbanner"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CloseTime"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/explorestack/iab/vast/tags/PostBannerTag;->o:Z

    if-nez v4, :cond_3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->h:F

    goto :goto_0

    :cond_4
    const-string v4, "Duration"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/explorestack/iab/vast/tags/PostBannerTag;->o:Z

    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_6
    :goto_2
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->i:F

    goto :goto_0

    :cond_7
    const-string v4, "ClosableView"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_3

    :cond_8
    const-string v4, "Countdown"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->d:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_3

    :cond_9
    const-string v4, "LoadingView"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_3

    :cond_a
    const-string v4, "Progress"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    :goto_3
    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/IabElementStyle;)V

    goto/16 :goto_0

    :cond_b
    const-string v4, "UseNativeClose"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->l:Z

    goto/16 :goto_0

    :cond_c
    const-string v4, "IgnoresSafeAreaLayoutGuide"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->k:Z

    goto/16 :goto_0

    :cond_d
    const-string v4, "ProductLink"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v4, "R1"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->m:Z

    goto/16 :goto_0

    :cond_f
    const-string v4, "R2"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->n:Z

    goto/16 :goto_0

    :cond_10
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    const-string v4, "VastXmlTag"

    invoke-static {v4, v3}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_11
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCloseStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->c:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getCloseTimeSec()F
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->h:F

    return v0
.end method

.method public getCountDownStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->d:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getDurationSec()F
    .locals 1

    iget v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->i:F

    return v0
.end method

.method public getLoadingStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getProductLink()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public isForceUseNativeClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->l:Z

    return v0
.end method

.method public isIgnoreSafeArea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->k:Z

    return v0
.end method

.method public isR1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->m:Z

    return v0
.end method

.method public isR2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->n:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->j:Z

    return v0
.end method

.method public setCloseTimeSec(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->h:F

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/explorestack/iab/vast/tags/PostBannerTag;->j:Z

    return-void
.end method
