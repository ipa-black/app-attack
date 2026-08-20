.class public Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;
.super Lcom/explorestack/iab/vast/tags/ExtensionTag;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/a;


# instance fields
.field public final d:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final e:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final f:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final g:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final h:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final i:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final j:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final k:Lcom/explorestack/iab/utils/IabElementStyle;

.field public final l:Lcom/explorestack/iab/vast/tags/PostBannerTag;

.field public m:Ljava/lang/Integer;

.field public n:Ljava/lang/Integer;

.field public o:Lcom/explorestack/iab/vast/tags/CompanionTag;

.field public p:Ljava/lang/Boolean;

.field public q:Ljava/lang/Float;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/ExtensionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->d:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->g:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->h:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->i:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->j:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/IabElementStyle;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->k:Lcom/explorestack/iab/utils/IabElementStyle;

    new-instance v0, Lcom/explorestack/iab/vast/tags/PostBannerTag;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/tags/PostBannerTag;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->l:Lcom/explorestack/iab/vast/tags/PostBannerTag;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->r:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->s:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->t:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->u:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Extension"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_21

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Video"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->d:Lcom/explorestack/iab/utils/IabElementStyle;

    :goto_1
    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/IabElementStyle;)V

    goto :goto_0

    :cond_2
    const-string v4, "LoadingView"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->j:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_1

    :cond_3
    const-string v4, "Countdown"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->k:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_1

    :cond_4
    const-string v4, "Progress"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->h:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_1

    :cond_5
    const-string v4, "ClosableView"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->g:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_1

    :cond_6
    const-string v4, "Mute"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_1

    :cond_7
    const-string v4, "CTA"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_1

    :cond_8
    const-string v4, "RepeatView"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->i:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_1

    :cond_9
    const-string v4, "Postbanner"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->l:Lcom/explorestack/iab/vast/tags/PostBannerTag;

    invoke-virtual {v3, p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->parse(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_a
    const-string v4, "Autorotate"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->p:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_b
    const-string v4, "R1"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->t:Z

    goto/16 :goto_0

    :cond_c
    const-string v4, "R2"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->u:Z

    goto/16 :goto_0

    :cond_d
    const-string v4, "ForceOrientation"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->g(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->v:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_e
    const-string v4, "CtaText"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/iab/utils/IabElementStyle;->setContent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v4, "ShowCta"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    :goto_2
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/iab/utils/IabElementStyle;->setVisible(Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_10
    const-string v4, "ShowMute"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_2

    :cond_11
    const-string v4, "ShowCompanion"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->l:Lcom/explorestack/iab/vast/tags/PostBannerTag;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->setVisible(Z)V

    goto/16 :goto_0

    :cond_12
    const-string v4, "CompanionCloseTime"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->f(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->l:Lcom/explorestack/iab/vast/tags/PostBannerTag;

    invoke-virtual {v4, v3}, Lcom/explorestack/iab/vast/tags/PostBannerTag;->setCloseTimeSec(I)V

    goto/16 :goto_0

    :cond_13
    const-string v4, "Muted"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->r:Z

    goto/16 :goto_0

    :cond_14
    const-string v4, "VideoClickable"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->s:Z

    goto/16 :goto_0

    :cond_15
    const-string v4, "CtaXPosition"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    :goto_3
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/iab/utils/IabElementStyle;->setHorizontalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_16
    const-string v4, "CtaYPosition"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    :goto_4
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/explorestack/iab/utils/IabElementStyle;->setVerticalPosition(Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_17
    const-string v4, "CloseXPosition"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->g:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_3

    :cond_18
    const-string v4, "CloseYPosition"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->g:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_4

    :cond_19
    const-string v4, "MuteXPosition"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_3

    :cond_1a
    const-string v4, "MuteYPosition"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    goto :goto_4

    :cond_1b
    const-string v4, "AssetsColor"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->m:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1c
    const-string v4, "AssetsBackgroundColor"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->n:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1d
    const-string v4, "Companion"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    new-instance v3, Lcom/explorestack/iab/vast/tags/CompanionTag;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/CompanionTag;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->isValidTag()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/CompanionTag;->hasCreative()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->o:Lcom/explorestack/iab/vast/tags/CompanionTag;

    goto/16 :goto_0

    :cond_1e
    const-string v4, "CloseTime"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->q:Ljava/lang/Float;

    goto/16 :goto_0

    :cond_1f
    const-string v4, "ShowProgress"

    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->h:Lcom/explorestack/iab/utils/IabElementStyle;

    goto/16 :goto_2

    :cond_20
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/VastXmlTag;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_21
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAssetsBackgroundColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->n:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAssetsColor()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->m:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCloseStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->g:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getCloseTimeSec()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->q:Ljava/lang/Float;

    return-object v0
.end method

.method public getCompanionTag()Lcom/explorestack/iab/vast/tags/CompanionTag;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->o:Lcom/explorestack/iab/vast/tags/CompanionTag;

    return-object v0
.end method

.method public getCountDownStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->k:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getCtaStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->e:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getForceOrientation()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLoadingStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->j:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getMuteStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->f:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getPostBannerTag()Lcom/explorestack/iab/vast/tags/PostBannerTag;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->l:Lcom/explorestack/iab/vast/tags/PostBannerTag;

    return-object v0
.end method

.method public getProgressStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->h:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getRepeatStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->i:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public getVideoStyle()Lcom/explorestack/iab/utils/IabElementStyle;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->d:Lcom/explorestack/iab/utils/IabElementStyle;

    return-object v0
.end method

.method public isAutoRotate()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->p:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isMuted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->r:Z

    return v0
.end method

.method public isR1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->t:Z

    return v0
.end method

.method public isR2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->u:Z

    return v0
.end method

.method public isVideoClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/AppodealExtensionTag;->s:Z

    return v0
.end method
