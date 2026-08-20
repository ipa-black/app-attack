.class final Lcom/appnext/banners/g$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/banners/g$a;->openStore(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic dn:Lcom/appnext/banners/g$a;


# direct methods
.method constructor <init>(Lcom/appnext/banners/g$a;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getWebview()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->click()V

    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->getSelectedAd()Lcom/appnext/banners/BannerAdData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appnext/banners/BannerAdData;->getRevenueType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "b"

    const-string v2, "a"

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    .line 261
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v5, v5, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v5}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_cpiActiveFlow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 262
    iget-object v4, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v4, v4, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v4}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    .line 263
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v6, :cond_2

    goto :goto_2

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v5}, Lcom/appnext/banners/g;->access$200(Lcom/appnext/banners/g;Z)V

    goto :goto_4

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v3}, Lcom/appnext/banners/g;->access$302(Lcom/appnext/banners/g;Z)Z

    .line 276
    :goto_2
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->click()V

    return-void

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v3}, Lcom/appnext/banners/g;->access$200(Lcom/appnext/banners/g;Z)V

    goto :goto_4

    .line 280
    :cond_5
    invoke-static {}, Lcom/appnext/banners/d;->S()Lcom/appnext/banners/d;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v5, v5, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v5}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_cpcActiveFlow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/appnext/banners/d;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 281
    iget-object v4, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v4, v4, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v4}, Lcom/appnext/banners/g;->getBannerSize()Lcom/appnext/banners/BannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appnext/banners/BannerSize;->toString()Ljava/lang/String;

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x61

    if-eq v4, v5, :cond_7

    const/16 v2, 0x62

    if-eq v4, v2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 284
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-static {v0, v3}, Lcom/appnext/banners/g;->access$302(Lcom/appnext/banners/g;Z)Z

    .line 289
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/appnext/banners/g$a$1;->dn:Lcom/appnext/banners/g$a;

    iget-object v0, v0, Lcom/appnext/banners/g$a;->di:Lcom/appnext/banners/g;

    invoke-virtual {v0}, Lcom/appnext/banners/g;->click()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
