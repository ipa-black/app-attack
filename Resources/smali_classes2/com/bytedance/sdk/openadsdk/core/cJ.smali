.class public Lcom/bytedance/sdk/openadsdk/core/cJ;
.super Ljava/lang/Object;
.source "AdInfoFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/cJ$Qhi;
    }
.end annotation


# direct methods
.method private static CJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;
    .locals 18

    move-object/from16 v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 778
    :cond_0
    const-string v1, "mCodeId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 779
    const-string v3, "mImgAcceptedWidth"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 780
    const-string v5, "mImgAcceptedHeight"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 781
    const-string v6, "mExpressViewAcceptedWidth"

    const-wide/16 v7, 0x0

    invoke-virtual {v0, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    .line 782
    const-string v9, "mExpressViewAcceptedHeight"

    invoke-virtual {v0, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 783
    const-string v8, "mAdCount"

    const/4 v9, 0x6

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 784
    const-string v9, "mSupportDeepLink"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 785
    const-string v10, "mRewardName"

    invoke-virtual {v0, v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 786
    const-string v11, "mRewardAmount"

    invoke-virtual {v0, v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 787
    const-string v12, "mMediaExtra"

    invoke-virtual {v0, v12, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 788
    const-string v13, "mUserID"

    invoke-virtual {v0, v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 789
    const-string v14, "mOrientation"

    const/4 v15, 0x2

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 790
    const-string v14, "mNativeAdType"

    invoke-virtual {v0, v14, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 791
    const-string v15, "mIsAutoPlay"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    move/from16 v16, v15

    .line 792
    const-string v15, "mIsExpressAd"

    invoke-virtual {v0, v15, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 793
    const-string v4, "mBidAdm"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 794
    const-string v4, "mDurationSlotType"

    move-object/from16 v17, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 795
    new-instance v2, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 796
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 797
    invoke-virtual {v1, v3, v5}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 798
    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 799
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 800
    invoke-virtual {v1, v9}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 801
    invoke-virtual {v1, v10}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 802
    invoke-virtual {v1, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 803
    invoke-virtual {v1, v12}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 804
    invoke-virtual {v1, v13}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 805
    invoke-virtual {v1, v14}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move/from16 v2, v16

    .line 806
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 807
    invoke-virtual {v1, v15}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->isExpressAd(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    move-object/from16 v2, v17

    .line 808
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->withBid(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v1

    .line 809
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setDurationSlotType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    return-object v0
.end method

.method private static CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    .line 1153
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static Gm(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 980
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 981
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 982
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 983
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 984
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 987
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 988
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;Z)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x19d

    return p0

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x19e

    return p0

    :cond_1
    if-nez p1, :cond_2

    .line 1183
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x19f

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/ac;)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x197

    return p0

    .line 1193
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x198

    return p0

    .line 1196
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1a0

    return p0

    :cond_2
    const/16 p0, 0xc8

    return p0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I
    .locals 5

    const/16 v0, 0x191

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 997
    const-string p0, ""

    invoke-static {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    return v0

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    goto/16 :goto_3

    .line 1005
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1006
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v3

    if-gez v3, :cond_3

    .line 1008
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1009
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    goto :goto_0

    .line 1011
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    .line 1014
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ewb()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1015
    const-string v2, "fullscreen_interstitial_ad"

    .line 1017
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bM()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1019
    const-string v3, "load_html_fail"

    invoke-static {p0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return v0

    .line 1022
    :cond_5
    const-string v0, "load_html_success"

    invoke-static {p0, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1024
    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v0

    if-nez v0, :cond_9

    .line 1026
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v0

    const/4 v1, 0x2

    const/16 v3, 0xc8

    if-eq v0, v1, :cond_8

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    const/16 v1, 0xf

    if-eq v0, v1, :cond_7

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7

    goto :goto_1

    .line 1040
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;Z)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 1042
    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    return v0

    .line 1031
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cjC()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Ljava/util/List;)I

    move-result v0

    if-eq v0, v3, :cond_9

    .line 1033
    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    return v0

    .line 1052
    :cond_9
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->pF()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1053
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I

    move-result p0

    goto :goto_2

    .line 1055
    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I

    move-result p0

    :goto_2
    return p0

    :cond_b
    :goto_3
    const/16 v0, 0x192

    .line 1002
    invoke-static {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    return v0
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;)I
    .locals 3

    const/16 v0, 0xc8

    if-nez p0, :cond_0

    return v0

    .line 1162
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p0, 0x193

    return p0

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p0, 0x194

    return p0

    .line 1168
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->ac()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 1169
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->ac()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/16 p0, 0x195

    return p0

    :cond_3
    return v0
.end method

.method private static Qhi(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/hpZ;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/16 p0, 0x199

    return p0

    .line 1206
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/16 p0, 0x19a

    return p0

    .line 1209
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    if-nez v0, :cond_3

    const/16 p0, 0x19b

    return p0

    .line 1213
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x19c

    return p0

    :cond_4
    const/16 p0, 0xc8

    return p0
.end method

.method private static Qhi(Ljava/lang/String;II)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;",
            "Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;",
            ">;"
        }
    .end annotation

    .line 678
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    .line 685
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;)I

    move-result p2

    .line 686
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/zn;->CJ(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    move v2, v0

    move v0, p2

    move p2, v2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    move v0, p2

    .line 693
    :cond_2
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/Qhi/Tgh;-><init>(Landroid/content/Context;II)V

    .line 694
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p0

    .line 695
    new-instance p2, Landroid/util/Pair;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ;->Tgh:Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;

    invoke-direct {p2, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method public static Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)Landroid/util/Pair;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/bytedance/sdk/openadsdk/AdSlot;",
            "Lcom/bytedance/sdk/openadsdk/core/model/qMt;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cJ;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/bytedance/sdk/openadsdk/core/model/Qhi;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 66
    const-string v1, "choose_ui_data"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 70
    :cond_0
    :try_start_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;-><init>()V

    .line 71
    const-string v4, "request_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Ljava/lang/String;)V

    .line 72
    const-string v4, "ret"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(I)V

    .line 73
    const-string v4, "multi_ad_style"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ(I)V

    .line 74
    const-string v4, "message"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ(Ljava/lang/String;)V

    .line 75
    const-string v4, "gdid_encrypted"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lorg/json/JSONObject;)V

    .line 78
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Z)V

    .line 80
    :cond_1
    const-string v1, "auction_price"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ()I

    move-result v6

    if-eqz v6, :cond_2

    return-object v2

    .line 84
    :cond_2
    const-string v6, "creatives"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 85
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 90
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 91
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_3
    move-object v9, v2

    :goto_0
    move v10, v5

    .line 93
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_a

    .line 94
    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-static {v11, v12, v13}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 95
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Gm()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 97
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v14

    const/16 v15, 0x1e

    if-ne v14, v15, :cond_4

    .line 98
    invoke-virtual {v11, v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm(Z)V

    goto :goto_2

    .line 101
    :cond_4
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->cJ(I)V

    move-object v9, v2

    .line 105
    :cond_5
    :goto_2
    invoke-static {v11}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I

    move-result v14

    const/16 v15, 0xc8

    if-eq v14, v15, :cond_7

    if-eqz v11, :cond_6

    .line 109
    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v15

    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15, v14}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    goto :goto_3

    .line 111
    :cond_6
    const-string v15, ""

    invoke-static {v2, v15, v14}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 113
    :goto_3
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_9

    if-eqz v11, :cond_9

    .line 115
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/cJ$Qhi;

    invoke-virtual {v11}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->DS()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11, v14}, Lcom/bytedance/sdk/openadsdk/core/cJ$Qhi;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 120
    :cond_7
    invoke-virtual {v11, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm(Ljava/lang/String;)V

    .line 121
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 122
    invoke-virtual {v11, v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pM(Ljava/lang/String;)V

    .line 124
    :cond_8
    invoke-virtual {v3, v11}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_a
    if-eqz v9, :cond_b

    .line 126
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 127
    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Ljava/util/ArrayList;)V

    :cond_b
    move-object/from16 v0, p3

    move v5, v8

    goto :goto_5

    :cond_c
    move-object/from16 v0, p3

    .line 130
    :goto_5
    invoke-static {v5, v3, v6, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(ILcom/bytedance/sdk/openadsdk/core/model/Qhi;Ljava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    .line 131
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 133
    const-string v1, "TTAD.AdInfoFactory"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)Lcom/bykv/vk/openvk/component/video/api/ac/cJ;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 938
    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;-><init>()V

    .line 939
    const-string v1, "cover_height"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ(I)V

    .line 940
    const-string v1, "cover_width"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac(I)V

    .line 941
    const-string v1, "resolution"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi(Ljava/lang/String;)V

    .line 942
    const-string v1, "size"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi(J)V

    .line 943
    const-string v1, "video_duration"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    .line 944
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi(D)V

    .line 945
    const-string v3, "replay_time"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    cmpl-double v1, v1, v5

    if-gtz v1, :cond_2

    .line 946
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    .line 951
    :cond_2
    :goto_0
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv(I)V

    .line 952
    const-string p1, "cover_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ(Ljava/lang/String;)V

    .line 953
    const-string p1, "video_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac(Ljava/lang/String;)V

    .line 954
    const-string p1, "endcard"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ(Ljava/lang/String;)V

    .line 955
    const-string p1, "playable_download_url"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->fl(Ljava/lang/String;)V

    .line 956
    const-string p1, "file_hash"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh(Ljava/lang/String;)V

    .line 957
    const-string p1, "if_playable_loading_show"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Sf(I)V

    .line 958
    const-string p1, "remove_loading_page_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hm(I)V

    .line 959
    const-string p1, "fallback_endcard_judge"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi(I)V

    .line 961
    const-string p1, "video_preload_size"

    const v2, 0x4b000

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->fl(I)V

    .line 962
    const-string p1, "reward_video_cached_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh(I)V

    .line 963
    const-string p1, "execute_cached_type"

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ROR(I)V

    .line 965
    const-string p1, "endcard_render"

    if-eqz p2, :cond_3

    .line 966
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p2, -0x1

    .line 968
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    .line 970
    :goto_1
    invoke-virtual {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ(I)V

    return-object v0
.end method

.method public static Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 183
    :cond_0
    invoke-static {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p0

    return-object p0
.end method

.method private static Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 191
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v7

    .line 192
    const-string v1, "interaction_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->tP(I)V

    .line 193
    const-string v1, "is_arbitrage_sample"

    const/4 v8, 0x0

    invoke-virtual {p0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->kYc(I)V

    .line 194
    const-string v1, "is_arbitrage"

    invoke-virtual {p0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ(I)V

    .line 195
    const-string v1, "arbitrage_strategy"

    invoke-virtual {p0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qMt(I)V

    .line 196
    const-string v1, "target_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ABk(Ljava/lang/String;)V

    .line 197
    const-string v1, "ad_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->kYc(Ljava/lang/String;)V

    .line 198
    const-string v1, "app_log_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->tP(Ljava/lang/String;)V

    .line 199
    const-string v1, "source"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gm(Ljava/lang/String;)V

    .line 200
    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zc(Ljava/lang/String;)V

    .line 201
    const-string v1, "dislike_control"

    invoke-virtual {p0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CQU(I)V

    .line 202
    const-string v1, "play_bar_show_time"

    const/16 v2, -0xc8

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ABk(I)V

    .line 203
    const-string v1, "gecko_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->qMt(Ljava/lang/String;)V

    .line 204
    const-string v1, "set_click_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 206
    const-string v2, "cta"

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-virtual {v7, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(D)V

    .line 207
    const-string v2, "other"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v7, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(D)V

    .line 209
    :cond_1
    const-string v1, "extension"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ(Lorg/json/JSONObject;)V

    .line 210
    const-string v1, "icon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 211
    const-string v2, "screenshot"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ(Z)V

    .line 212
    const-string v2, "play_bar_style"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Gm(I)V

    .line 213
    const-string v2, "market_url"

    const-string v9, ""

    invoke-virtual {p0, v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS(Ljava/lang/String;)V

    .line 214
    const-string v2, "video_adaptation"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm(I)V

    .line 215
    const-string v2, "feed_video_opentype"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Tgh(I)V

    .line 216
    const-string v2, "session_params"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Lorg/json/JSONObject;)V

    .line 217
    const-string v2, "auction_price"

    invoke-virtual {p0, v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hm(Ljava/lang/String;)V

    .line 218
    const-string v2, "mrc_report"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sDy(I)V

    .line 219
    const-string v2, "isMrcReportFinish"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Px()V

    .line 223
    :cond_2
    const-string v2, "render"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/16 v10, 0x64

    const/4 v11, 0x1

    if-eqz v2, :cond_3

    .line 225
    const-string v3, "render_sequence"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ROR(I)V

    .line 226
    const-string v3, "backup_render_control"

    invoke-virtual {v2, v3, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Sf(I)V

    .line 227
    const-string v3, "reserve_time"

    invoke-virtual {v2, v3, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB(I)V

    .line 228
    const-string v3, "render_thread"

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lG(I)V

    :cond_3
    if-eqz p2, :cond_4

    .line 234
    iget p2, p2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    goto :goto_0

    :cond_4
    move p2, v11

    .line 236
    :goto_0
    const-string v2, "render_control"

    invoke-virtual {p0, v2, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ(I)V

    .line 237
    const-string p2, "width"

    const-string v2, "height"

    const-string v3, "url"

    if-eqz v1, :cond_5

    .line 238
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;-><init>()V

    .line 239
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ(I)V

    .line 241
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(I)V

    .line 242
    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V

    .line 246
    :cond_5
    const-string v1, "reward_data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 248
    const-string v4, "reward_amount"

    invoke-virtual {v1, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(I)V

    .line 249
    const-string v4, "reward_name"

    invoke-virtual {v1, v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ROR(Ljava/lang/String;)V

    .line 253
    :cond_6
    const-string v1, "cover_image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 255
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;-><init>()V

    .line 256
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ(I)V

    .line 258
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(I)V

    .line 259
    invoke-virtual {v7, v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V

    .line 262
    :cond_7
    const-string v1, "image"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_8

    move v4, v8

    .line 264
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 265
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;-><init>()V

    .line 266
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 267
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(Ljava/lang/String;)V

    .line 268
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ(I)V

    .line 269
    invoke-virtual {v6, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(I)V

    .line 270
    const-string v12, "image_preview"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v5, v12}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(Z)V

    .line 271
    const-string v12, "image_key"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v7, v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 275
    :cond_8
    const-string p2, "show_url"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_9

    move v1, v8

    .line 277
    :goto_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 278
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hf()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    :cond_9
    const-string p2, "click_url"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_a

    move v1, v8

    .line 283
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 284
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NBs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 288
    :cond_a
    const-string p2, "play_start"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_b

    move v1, v8

    .line 290
    :goto_4
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_b

    .line 291
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dI()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 295
    :cond_b
    const-string p2, "click_area"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 297
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/WAv;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/WAv;-><init>()V

    .line 298
    const-string v2, "click_upper_content_area"

    invoke-virtual {p2, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/WAv;->Qhi:Z

    .line 299
    const-string v2, "click_upper_non_content_area"

    invoke-virtual {p2, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/WAv;->cJ:Z

    .line 300
    const-string v2, "click_lower_content_area"

    invoke-virtual {p2, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/WAv;->ac:Z

    .line 301
    const-string v2, "click_lower_non_content_area"

    invoke-virtual {p2, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/WAv;->CJ:Z

    .line 302
    const-string v2, "click_button_area"

    invoke-virtual {p2, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/WAv;->fl:Z

    .line 303
    const-string v2, "click_video_area"

    invoke-virtual {p2, v2, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, v1, Lcom/bytedance/sdk/openadsdk/core/model/WAv;->Tgh:Z

    .line 304
    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/WAv;)V

    .line 308
    :cond_c
    const-string p2, "adslot"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 310
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/cJ;->CJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p2

    .line 311
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_5

    .line 313
    :cond_d
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    :goto_5
    if-eqz p1, :cond_e

    .line 317
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getRequestExtraMap()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 319
    const-string p2, "admob_watermark"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 320
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Eh(Ljava/lang/String;)V

    goto :goto_6

    .line 327
    :cond_e
    const-string p1, "identificationOverlayContent"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Eh(Ljava/lang/String;)V

    .line 333
    :cond_f
    :goto_6
    const-string p1, "intercept_flag"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zc(I)V

    .line 335
    const-string p1, "phone_num"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->iMK(Ljava/lang/String;)V

    .line 336
    const-string p1, "title"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pA(Ljava/lang/String;)V

    .line 337
    const-string p1, "description"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ(Ljava/lang/String;)V

    .line 338
    const-string p1, "button_text"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH(Ljava/lang/String;)V

    .line 339
    const-string p1, "ad_logo"

    invoke-virtual {p0, p1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->WAv(I)V

    .line 340
    const-string p1, "ext"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->MQ(Ljava/lang/String;)V

    .line 342
    const-string p1, "cover_click_area"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ(I)V

    .line 345
    const-string p2, "image_mode"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS(I)V

    .line 346
    const-string p2, "orientation"

    invoke-virtual {p0, p2, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Dww(I)V

    .line 347
    const-string p2, "aspect_ratio"

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, p2, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float p2, v1

    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(F)V

    .line 348
    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ(I)V

    .line 349
    const-string p1, "app"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 350
    const-string p2, "deep_link"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 352
    const-string v1, "oem"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 353
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/EBS;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/EBS;

    move-result-object v1

    .line 354
    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/EBS;)V

    .line 357
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Tgh(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/ac;)V

    .line 358
    const-string p1, "interaction_method_params"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 359
    const-string v1, "arbitrage_interceptor_params"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 360
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Sf(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Tgh;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Tgh;)V

    .line 361
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->ROR(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/kYc;)V

    .line 362
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/cJ;->WAv(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;)V

    .line 365
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/model/bxS;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/bxS;)V

    .line 367
    const-string p1, "filter_words"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_11

    move p2, v8

    .line 369
    :goto_7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_11

    .line 370
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 371
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->fl(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 372
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 373
    invoke-virtual {v7, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    :cond_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .line 377
    :cond_11
    const-string p1, "count_down"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bxS(I)V

    .line 378
    const-string p1, "expiration_time"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {v7, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(J)V

    .line 380
    const-string p1, "video_encode_type"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn(I)V

    .line 382
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js(I)V

    .line 386
    const-string p1, "video"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 388
    invoke-static {p1, v7, v11}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p2

    .line 389
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V

    .line 391
    const-string v1, "multi_played_percent"

    const/16 v2, 0x32

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip(I)V

    goto :goto_8

    :cond_12
    move-object p2, v0

    .line 394
    :goto_8
    const-string p1, "h265_video"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 396
    invoke-static {p1, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;Z)Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p1

    .line 397
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V

    goto :goto_9

    :cond_13
    move-object p1, v0

    .line 401
    :goto_9
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LcF()I

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_14

    .line 402
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V

    .line 403
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zn(I)V

    goto :goto_a

    :cond_14
    if-eqz p1, :cond_17

    if-eqz p2, :cond_17

    .line 407
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 408
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ(Ljava/lang/String;)V

    .line 410
    :cond_15
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ABk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 411
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ABk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->fl(Ljava/lang/String;)V

    .line 414
    :cond_16
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ()I

    move-result v1

    if-ne v1, v2, :cond_17

    .line 415
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ(I)V

    :cond_17
    if-eqz p1, :cond_18

    .line 419
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V

    goto :goto_a

    .line 421
    :cond_18
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V

    .line 426
    :goto_a
    const-string p1, "download_conf"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 428
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->hm(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/ABk;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/ABk;)V

    .line 431
    :cond_19
    const-string p1, "media_ext"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 432
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Gm(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Ljava/util/Map;)V

    .line 434
    const-string p1, "tpl_info"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 436
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;-><init>()V

    .line 437
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->cJ(Ljava/lang/String;)V

    .line 438
    const-string v1, "md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->ac(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->CJ(Ljava/lang/String;)V

    .line 440
    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->fl(Ljava/lang/String;)V

    .line 441
    const-string v1, "diff_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->Tgh(Ljava/lang/String;)V

    .line 442
    const-string v1, "dynamic_creative"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->ROR(Ljava/lang/String;)V

    .line 444
    const-string v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->Qhi(Ljava/lang/String;)V

    .line 445
    const-string v3, "media_view"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->Sf(Ljava/lang/String;)V

    .line 447
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 448
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 450
    const-string v1, "tag_ids"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1a

    move v4, v8

    .line 452
    :goto_b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1a

    .line 453
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 457
    :cond_1a
    invoke-virtual {p2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->Qhi(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v1

    .line 459
    const-string v3, "TTAD.AdInfoFactory"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :goto_c
    const-string v1, "engine_version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->hm(Ljava/lang/String;)V

    .line 464
    const-string v1, "ugen_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->WAv(Ljava/lang/String;)V

    .line 465
    const-string v1, "ugen_md5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->Gm(Ljava/lang/String;)V

    .line 466
    const-string v1, "ugen_data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->zc(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;)V

    .line 469
    :cond_1b
    const-string p1, "creative_extra"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 470
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->WAv(Ljava/lang/String;)V

    .line 471
    const-string p1, "if_block_lp"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(I)V

    .line 472
    const-string p1, "cache_sort"

    invoke-virtual {p0, p1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->iMK(I)V

    .line 473
    const-string p1, "if_sp_cache"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pA(I)V

    .line 475
    const-string p1, "splash_control"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 477
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->ac(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/fl;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/fl;)V

    .line 480
    :cond_1c
    const-string p1, "is_package_open"

    invoke-virtual {p0, p1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pM(I)V

    .line 481
    const-string p1, "ad_info"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Sf(Ljava/lang/String;)V

    .line 483
    const-string p1, "ua_policy"

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HzH(I)V

    .line 485
    const-string p1, "playable_duration_time"

    const/16 v1, 0x14

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Eh(I)V

    .line 486
    const-string p1, "playable_endcard_close_time"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->aP(I)V

    .line 487
    const-string p1, "endcard_close_time"

    invoke-virtual {p0, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->NFd(I)V

    .line 488
    const-string p1, "interaction_method"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(I)V

    .line 490
    const-string p1, "dsp_html"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bxS(Ljava/lang/String;)V

    .line 491
    const-string p1, "image_stay"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->xyz(I)V

    .line 495
    const-string p1, "dsp_material_type"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    if-ltz p1, :cond_1d

    if-le p1, v1, :cond_1e

    :cond_1d
    move p1, v8

    :cond_1e
    if-nez p1, :cond_20

    .line 501
    const-string v2, "is_vast"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    move p1, v11

    .line 504
    :cond_1f
    const-string v2, "is_html"

    invoke-virtual {p0, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_d

    :cond_20
    move p2, p1

    .line 508
    :goto_d
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->yN(I)V

    if-eq p2, v11, :cond_21

    if-ne p2, v1, :cond_29

    .line 510
    :cond_21
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result p1

    if-gez p1, :cond_23

    .line 512
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 513
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p1

    goto :goto_e

    .line 515
    :cond_22
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result p1

    .line 518
    :cond_23
    :goto_e
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object p2

    .line 519
    const-string v1, "vast_json"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 520
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object p1

    goto :goto_10

    .line 522
    :cond_24
    const-string v1, "dsp_vast"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 524
    invoke-static {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-object v0

    .line 527
    :cond_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 530
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->SL()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Ljava/lang/String;II)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 533
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    .line 534
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;

    move-object v6, p1

    move-object p1, v1

    goto :goto_f

    :cond_26
    move-object p1, v0

    move-object v6, p1

    :goto_f
    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    .line 536
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;JLcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;)V

    :goto_10
    if-eqz p1, :cond_27

    .line 539
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Tgh(Ljava/lang/String;)V

    :cond_27
    if-nez p1, :cond_28

    return-object v0

    .line 545
    :cond_28
    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 548
    :cond_29
    const-string p1, "deep_link_appname"

    invoke-virtual {p0, p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Dww(Ljava/lang/String;)V

    .line 549
    const-string p1, "landing_page_download_clicktype"

    invoke-virtual {p0, p1, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es(I)V

    .line 551
    const-string p1, "dsp_style"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 553
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/model/iMK;

    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/iMK;-><init>(Lorg/json/JSONObject;)V

    .line 554
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/iMK;)V

    .line 558
    :cond_2a
    const-string p1, "dsp_adchoices"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 560
    const-string p2, "adchoices_icon"

    invoke-virtual {p1, p2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Ljava/lang/String;)V

    .line 561
    const-string p2, "adchoices_url"

    invoke-virtual {p1, p2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Tgh(Ljava/lang/String;)V

    .line 564
    :cond_2b
    const-string p1, "gdid_encrypted"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 565
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2c

    .line 566
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pM(Ljava/lang/String;)V

    .line 569
    :cond_2c
    const-string p1, "jump_probability"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_2d

    if-le p1, v10, :cond_2e

    :cond_2d
    move p1, v8

    .line 573
    :cond_2e
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ(I)V

    .line 574
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->is()V

    .line 576
    const-string p1, "ugen"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 578
    const-string p2, "endcard"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 580
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object p2

    .line 581
    invoke-virtual {v7, p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;)V

    .line 583
    const-string p2, "overlay"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 585
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    move-result-object p1

    .line 586
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;)V

    .line 591
    :cond_2f
    const-string p1, "preload_h5_type"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 592
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->PAe(I)V

    .line 594
    const-string p1, "hasReportShow"

    invoke-virtual {p0, p1, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Sf(Z)V

    .line 595
    const-string p1, "endcard_creative"

    invoke-virtual {p0, p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->aP(Ljava/lang/String;)V

    return-object v7
.end method

.method private static Qhi(ILcom/bytedance/sdk/openadsdk/core/model/Qhi;Ljava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/openadsdk/core/model/Qhi;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cJ;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-lt p0, v0, :cond_4

    .line 145
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ROR()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sub-int v4, p0, v0

    .line 153
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->Sf()Lcom/bytedance/sdk/openadsdk/core/model/Qhi$Qhi;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    move v5, p0

    goto :goto_1

    :cond_2
    move v5, v1

    :goto_1
    if-gtz v4, :cond_3

    if-eqz v5, :cond_4

    .line 156
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/cJ$1;

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/Qhi;IZLjava/util/ArrayList;Lcom/bytedance/sdk/openadsdk/core/model/cJ;)V

    const-string p1, "choose_ad_parsing_error"

    invoke-static {p1, v1, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 4

    .line 712
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 713
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v0

    .line 715
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 716
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->tP(I)V

    :cond_0
    const/4 v0, 0x1

    .line 718
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CJ(I)V

    .line 719
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;)V

    .line 720
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->CJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->CJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pA(Ljava/lang/String;)V

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->fl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 724
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->fl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ(Ljava/lang/String;)V

    .line 727
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Tgh()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ABk(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 729
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/ac;)V

    .line 730
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    if-nez v1, :cond_3

    .line 732
    new-instance v1, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;-><init>()V

    .line 734
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->ROR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac(Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Sf()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi(D)V

    .line 736
    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V

    .line 740
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->fl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 741
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;-><init>()V

    .line 742
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->cJ()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(I)V

    .line 744
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->cJ()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ;->ac()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ(I)V

    .line 745
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V

    return-void

    .line 747
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    move-result-object p0

    if-nez p0, :cond_5

    .line 748
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;-><init>()V

    .line 749
    const-string v0, "https://sf16-fe-tos-sg.i18n-pglstatp.com/obj/ad-pattern-sg/static/images/2023620white.jpeg"

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(Ljava/lang/String;)V

    const/16 v0, 0x62

    .line 750
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->Qhi(I)V

    .line 751
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/hpZ;->cJ(I)V

    .line 752
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V

    :cond_5
    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V
    .locals 3

    .line 609
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 610
    const-string v1, "reason_code"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 611
    const-string v1, "error_code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 612
    const-string v1, "load_vast_fail"

    invoke-static {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;JLcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;)V
    .locals 9

    .line 618
    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/cJ$2;

    const-string v1, "vast_parser"

    move-object v0, v8

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/cJ$2;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;JLcom/bytedance/sdk/openadsdk/core/ROR/Qhi/cJ$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method private static Qhi(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ$Qhi;",
            ">;)V"
        }
    .end annotation

    .line 1221
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cJ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/cJ$3;-><init>(Ljava/util/ArrayList;)V

    const-string p0, "multiple_ads_parsing_error"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Gm/cJ;)V

    return-void
.end method

.method private static Qhi(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static ROR(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/kYc;
    .locals 8

    .line 862
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/kYc;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;-><init>()V

    .line 863
    const-string v1, ""

    const-wide/16 v2, 0x14

    const-wide/16 v4, 0xa

    if-nez p0, :cond_0

    .line 864
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi(J)V

    .line 865
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ(J)V

    .line 866
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->ac(J)V

    .line 867
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ(J)V

    .line 868
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi(Ljava/lang/String;)V

    return-object v0

    .line 871
    :cond_0
    const-string v6, "onlylp_loading_maxtime"

    invoke-virtual {p0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi(J)V

    .line 872
    const-string v6, "straight_lp_showtime"

    invoke-virtual {p0, v6, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->cJ(J)V

    .line 873
    const-string v6, "onlyagg_loading_maxtime"

    invoke-virtual {p0, v6, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->ac(J)V

    .line 874
    const-string v4, "straight_agg_showtime"

    invoke-virtual {p0, v4, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->CJ(J)V

    .line 875
    const-string v2, "loading_text"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/kYc;->Qhi(Ljava/lang/String;)V

    return-object v0
.end method

.method private static Sf(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Tgh;
    .locals 6

    .line 880
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;-><init>()V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 882
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->Qhi(I)V

    .line 883
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->cJ(I)V

    .line 884
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->cJ(Ljava/util/List;)V

    .line 885
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->ac(I)V

    .line 886
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->Qhi(Ljava/util/List;)V

    return-object v0

    .line 889
    :cond_0
    const-string v2, "interceptor_x"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->Qhi(I)V

    .line 890
    const-string v2, "interceptor_y"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->cJ(I)V

    .line 891
    const-string v2, "interceptor_page"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 892
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    move v4, v1

    .line 894
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 895
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 898
    :cond_1
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->cJ(Ljava/util/List;)V

    .line 899
    const-string v2, "interceptor_interval_time"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->ac(I)V

    .line 900
    const-string v2, "url_regular"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 901
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 903
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 904
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 907
    :cond_2
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/Tgh;->Qhi(Ljava/util/List;)V

    return-object v0
.end method

.method private static Tgh(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/ac;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 849
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ac;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;-><init>()V

    .line 850
    const-string v1, "app_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->cJ(Ljava/lang/String;)V

    .line 851
    const-string v1, "package_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac(Ljava/lang/String;)V

    .line 852
    const-string v1, "download_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi(Ljava/lang/String;)V

    .line 853
    const-string v1, "score"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi(D)V

    .line 854
    const-string v1, "comment_num"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi(I)V

    .line 855
    const-string v1, "app_size"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->cJ(I)V

    .line 856
    const-string v1, "app_category"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->CJ(Ljava/lang/String;)V

    return-object v0
.end method

.method private static WAv(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/zc;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 926
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/zc;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;-><init>()V

    .line 927
    const-string v1, "deeplink_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->Qhi(Ljava/lang/String;)V

    .line 928
    const-string v1, "fallback_url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->cJ(Ljava/lang/String;)V

    .line 929
    const-string v1, "fallback_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/zc;->Qhi(I)V

    return-object v0
.end method

.method private static ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I
    .locals 5

    .line 1115
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    .line 1118
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 1120
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    return v1

    :cond_0
    move v1, v2

    .line 1125
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    const/16 v2, 0x8

    if-eq v3, v2, :cond_3

    goto :goto_0

    .line 1135
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/ac;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 1137
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    return v1

    .line 1129
    :cond_3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x196

    .line 1130
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    :cond_4
    :goto_0
    return v1
.end method

.method private static ac(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/fl;
    .locals 7

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 761
    :cond_0
    const-string v0, "splash_clickarea"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 762
    const-string v1, "splash_layout_id"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 763
    const-string v2, "load_wait_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p0, v5, v3

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v3, v5

    .line 768
    :goto_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/model/fl;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/fl;-><init>()V

    .line 769
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/fl;->Qhi(I)V

    .line 770
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/fl;->cJ(I)V

    .line 771
    invoke-virtual {p0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/fl;->Qhi(J)V

    return-object p0
.end method

.method private static cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)I
    .locals 8

    .line 1063
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->nR()I

    move-result v1

    const/16 v2, 0xc8

    if-nez v1, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;)I

    move-result v1

    .line 1067
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1070
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v3

    const/4 v4, 0x2

    const/16 v5, 0x196

    const/16 v6, 0x197

    const/16 v7, 0x1a1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 1080
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1083
    invoke-static {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    move v1, v6

    goto :goto_1

    .line 1085
    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1087
    invoke-static {p0, v0, v7}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    move v1, v7

    goto :goto_1

    .line 1088
    :cond_3
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->ac()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v1, 0x1a0

    .line 1090
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    goto :goto_1

    .line 1091
    :cond_4
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/ac;->Qhi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v1, 0x198

    .line 1093
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    goto :goto_1

    .line 1074
    :cond_5
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/cJ;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1076
    invoke-static {p0, v0, v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    move v1, v5

    :cond_6
    :goto_1
    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_9

    if-ne v1, v5, :cond_7

    goto :goto_2

    :cond_7
    if-eq v1, v2, :cond_8

    .line 1107
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    :cond_8
    return v2

    :cond_9
    :goto_2
    return v1
.end method

.method private static cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
    .locals 2

    .line 600
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;-><init>()V

    .line 601
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    .line 602
    const-string v1, "md5"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    .line 603
    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;

    return-object v0
.end method

.method private static fl(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 820
    :cond_0
    :try_start_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>()V

    .line 821
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setId(Ljava/lang/String;)V

    .line 822
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setName(Ljava/lang/String;)V

    .line 823
    const-string v2, "is_selected"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;->setIsSelected(Z)V

    .line 824
    const-string v2, "options"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 826
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    .line 827
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 828
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 829
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/cJ;->fl(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/FilterWord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 831
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 832
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/FilterWord;->addOption(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    return-object v0
.end method

.method private static hm(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/ABk;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 916
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ABk;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ABk;-><init>()V

    .line 917
    const-string v1, "if_send_click"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/ABk;->Qhi(I)V

    return-object v0
.end method
