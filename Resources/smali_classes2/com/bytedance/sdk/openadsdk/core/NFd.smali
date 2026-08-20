.class public Lcom/bytedance/sdk/openadsdk/core/NFd;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/fl/cJ;
.implements Lcom/bytedance/sdk/component/utils/CQU$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/Sf/cJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/NFd$Qhi;,
        Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;
    }
.end annotation


# static fields
.field private static final Sf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ABk:I

.field private CJ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/widget/SSWebView;",
            ">;"
        }
    .end annotation
.end field

.field private CQU:Lcom/bytedance/sdk/openadsdk/WAv/fl;

.field private Dww:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

.field private EBS:Lcom/bytedance/sdk/openadsdk/Sf/fl;

.field private Eh:Lcom/bytedance/sdk/openadsdk/core/cJ/fl;

.field private FQ:Z

.field private Gm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private Jma:Z

.field private MND:Landroid/content/Context;

.field private MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

.field private NFd:Lcom/bytedance/sdk/openadsdk/WAv/WAv;

.field private PAe:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;

.field private Qe:Lcom/bytedance/sdk/openadsdk/core/NFd$Qhi;

.field protected Qhi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ROR:Lcom/bytedance/sdk/openadsdk/core/widget/ac;

.field private Tgh:Ljava/lang/String;

.field private WAv:Ljava/lang/String;

.field private aP:Lcom/bytedance/sdk/openadsdk/WAv/cJ;

.field ac:Z

.field private bxS:Lcom/bytedance/sdk/openadsdk/WAv/Qhi;

.field cJ:Z

.field private dIT:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

.field private es:Lcom/bytedance/sdk/component/Qhi/kYc;

.field private final fl:Lcom/bytedance/sdk/component/utils/CQU;

.field private hm:Lcom/bytedance/sdk/openadsdk/Sf/ac;

.field private hpZ:Z

.field private iMK:Ljava/lang/String;

.field private ip:Lcom/bytedance/sdk/openadsdk/WAv/ROR;

.field private jPH:Z

.field private js:Z

.field private kYc:Lorg/json/JSONObject;

.field private lB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;"
        }
    .end annotation
.end field

.field private lG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/WAv;",
            ">;"
        }
    .end annotation
.end field

.field private pA:I

.field private pM:Lorg/json/JSONObject;

.field private qMt:Lorg/json/JSONObject;

.field private sDy:Z

.field private tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

.field private xyz:Z

.field private yN:Ljava/lang/String;

.field private zc:Ljava/lang/String;

.field private zn:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 197
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Sf:Ljava/util/Map;

    const-string v1, "log_event"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "private"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "dispatch_message"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v1, "custom_event"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v1, "log_event_v3"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hpZ:Z

    .line 163
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->sDy:Z

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Jma:Z

    .line 171
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->js:Z

    .line 173
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac:Z

    .line 181
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->FQ:Z

    .line 205
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    .line 206
    new-instance p1, Lcom/bytedance/sdk/component/utils/CQU;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/CQU;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/CQU$Qhi;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl:Lcom/bytedance/sdk/component/utils/CQU;

    return-void
.end method

.method private ABk()Landroid/webkit/WebView;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 278
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_1

    return-object v1

    .line 282
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private ABk(Lorg/json/JSONObject;)Z
    .locals 7

    .line 1167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1170
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->ac()J

    move-result-wide v2

    long-to-double v2, v2

    .line 1171
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->CJ()I

    move-result v0

    .line 1173
    :try_start_0
    const-string v4, "currentTime"

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v5

    invoke-virtual {p1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1174
    const-string v2, "state"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/NFd;)Ljava/lang/String;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Tgh:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private EBS()Z
    .locals 3

    .line 1581
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->et()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 1582
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Jma:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1586
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->et()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "parent_type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    return v1

    .line 1589
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 1592
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Jma:Z

    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private Gm(Lorg/json/JSONObject;)V
    .locals 2

    .line 1137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1141
    :cond_0
    :try_start_0
    const-string v0, "mute"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 1142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private HzH()V
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->NFd:Lcom/bytedance/sdk/openadsdk/WAv/WAv;

    if-nez v0, :cond_0

    return-void

    .line 910
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/WAv/WAv;->Qhi()V

    return-void
.end method

.method private HzH(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1376
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->EBS:Lcom/bytedance/sdk/openadsdk/Sf/fl;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1380
    :try_start_0
    const-string v2, "temaiProductIds"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1381
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1382
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->EBS:Lcom/bytedance/sdk/openadsdk/Sf/fl;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/Sf/fl;->Qhi(ZLorg/json/JSONArray;)V

    return-void

    .line 1384
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->EBS:Lcom/bytedance/sdk/openadsdk/Sf/fl;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Sf/fl;->Qhi(ZLorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1387
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->EBS:Lcom/bytedance/sdk/openadsdk/Sf/fl;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Sf/fl;->Qhi(ZLorg/json/JSONArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private MQ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 1810
    const-string v0, "ad_extra_data"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi:Ljava/util/Map;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    .line 1812
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1815
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 1816
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1818
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1820
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1821
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1823
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1825
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method private MQ()V
    .locals 3

    .line 1118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->es()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1832
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1833
    const-string p1, "show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1834
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1836
    :cond_0
    const-string p1, "aggregate_page"

    goto :goto_0

    .line 1838
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->aP:Lcom/bytedance/sdk/openadsdk/WAv/cJ;

    if-eqz p2, :cond_2

    .line 1840
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1841
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

    if-nez p2, :cond_3

    .line 1843
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1419
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/NFd$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm(Lorg/json/JSONObject;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Z)V
    .locals 3

    .line 2003
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;I)V

    .line 2004
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/Tgh;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/pA/Qhi/Qhi/fl;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 2006
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->Qhi(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 2008
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Z)V
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zn:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 900
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zn:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Ljava/lang/String;)V

    return-void

    .line 902
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zn:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;I)V
    .locals 2
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 485
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->pA()Ljava/util/List;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 487
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 489
    :cond_0
    const-string v0, "appName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v0, "innerAppName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->fl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v0, "aid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string v0, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 493
    const-string v0, "appVersion"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->CJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v0, "netType"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->Tgh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v0, "supportList"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/common/Qhi;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "deviceId"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->cJ(Landroid/content/Context;)Z

    move-result p2

    const-string v0, "device_platform"

    if-eqz p2, :cond_1

    .line 498
    const-string p2, "Android_Pad"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 500
    :cond_1
    const-string p2, "Android"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 502
    :goto_1
    const-string p2, "device_type"

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private static Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 526
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v0

    .line 527
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    const-string v1, "cid"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 533
    const-string v1, "log_extra"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 536
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bIO()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 538
    const-string v0, "download_url"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->PAe()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->PAe()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "SG"

    :goto_0
    const-string v0, "dc"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string p1, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->EGK()Z

    move-result p1

    const-string v0, "isRTL"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private Qhi(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 787
    :cond_0
    :try_start_0
    const-string p2, "ad_extra_data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 789
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 790
    const-string p1, "agg_request_type"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 791
    const-string p1, "click"

    .line 792
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ROR:Lcom/bytedance/sdk/openadsdk/core/widget/ac;

    if-eqz p1, :cond_1

    .line 794
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ac;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 798
    const-string p2, "TTAD.AndroidObject"

    const-string p3, "callAggClickListener faile"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/pA;)Z
    .locals 0
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .line 1474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->lG:Ljava/util/HashMap;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1477
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/WAv;

    if-nez p1, :cond_1

    return p3

    :cond_1
    const/4 p1, 0x0

    .line 1479
    throw p1

    :cond_2
    :goto_0
    return p3
.end method

.method private Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 7

    if-eqz p1, :cond_0

    .line 807
    const-string v0, "landingStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 808
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 809
    const-string v2, "fallback_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, -0x1

    move-object p1, v1

    .line 811
    :goto_0
    const-string v2, "TTAD.AndroidObject"

    const-string v3, "invalid_url"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 812
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/hpZ;->Qhi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 814
    :try_start_0
    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 816
    const-string p2, "handleUrl, EX1->: "

    invoke-static {v2, p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 822
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    const-string p1, "empty_url"

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 825
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/hpZ;->Qhi(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 827
    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 831
    const-string p2, "handleUrl, EX2->: "

    invoke-static {v2, p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    return v4
.end method

.method private ROR(Ljava/lang/String;)V
    .locals 6

    .line 1658
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1661
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1664
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1667
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1669
    const-string v4, "__msg_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->Qhi:Ljava/lang/String;

    .line 1670
    const-string v4, "__callback_id"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->cJ:Ljava/lang/String;

    .line 1671
    const-string v4, "func"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->ac:Ljava/lang/String;

    .line 1672
    const-string v4, "params"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    .line 1673
    const-string v4, "JSSDK"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->fl:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1677
    :catchall_0
    :cond_0
    :try_start_2
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->Qhi:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->ac:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1680
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl:Lcom/bytedance/sdk/component/utils/CQU;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/utils/CQU;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1681
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1682
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->fl:Lcom/bytedance/sdk/component/utils/CQU;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/utils/CQU;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method private ROR(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 507
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->xyz:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->mvd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 510
    const-string v1, "adInfos"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->Gf()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 512
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 513
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    .line 514
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    return-void
.end method

.method private Sf(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playable_style"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private Sf(Ljava/lang/String;)Z
    .locals 2

    .line 1785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1788
    :cond_0
    const-string v0, "click_other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1791
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm()Z

    move-result p1

    return p1
.end method

.method private WAv(Lorg/json/JSONObject;)V
    .locals 5

    .line 921
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->aP:Lcom/bytedance/sdk/openadsdk/WAv/cJ;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 924
    :cond_0
    const-string v1, "isRenderSuc"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "msg"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/WAv/cJ;->Qhi(ZILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/NFd;)I
    .locals 0

    .line 112
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->pA:I

    return p0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->kYc:Lorg/json/JSONObject;

    return-object p1
.end method

.method private ac(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1639
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1642
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1643
    const-string v1, "__msg_type"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1644
    const-string v1, "__event_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    .line 1646
    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1648
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private bxS()V
    .locals 1

    .line 1923
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm:Lcom/bytedance/sdk/openadsdk/Sf/ac;

    if-nez v0, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/Sf/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/Sf/cJ;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/Sf/Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm:Lcom/bytedance/sdk/openadsdk/Sf/ac;

    :cond_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;)Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->PAe:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;

    return-object p0
.end method

.method public static cJ(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 1568
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 1572
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1574
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 1575
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->mZ()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2035
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2036
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2037
    const-string v2, "is_ad_event"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2038
    const-string v2, "cid"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->DS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2039
    const-string v2, "req_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2040
    const-string v2, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2041
    const-string v2, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2042
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->EGK()Z

    move-result v2

    const-string v3, "isRTL"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2043
    const-string v2, "ad_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2044
    const-string v1, "endcard_creative"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->usK()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->zc(Lorg/json/JSONObject;)V

    return-void
.end method

.method private cJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 1609
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1610
    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1611
    const-string v1, "__callback_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 1613
    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1615
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;)Z
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Sf(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/NFd;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private hm(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1852
    :cond_0
    const-string v0, "bytedance://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1855
    :cond_1
    const-string v0, "bytedance://dispatch_message/"

    .line 1856
    const-string v1, "bytedance://private/setresult/"

    .line 1858
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1859
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1862
    const-string v0, "javascript:ToutiaoJSBridge._fetchQueue()"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/zc;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1864
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x26

    const/16 v1, 0x1e

    .line 1866
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    .line 1870
    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 1871
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1872
    const-string v0, "SCENE_FETCHQUEUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1873
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ROR(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private hm(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 889
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zn:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-nez v0, :cond_0

    goto :goto_0

    .line 892
    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->cJ(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hpZ()Landroid/content/Context;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/cJ;->Qhi(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method private hpZ(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1364
    :cond_0
    :try_start_0
    const-string v0, "trackData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1365
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1366
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1367
    const-string v1, "bytedance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1368
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/HzH;->Qhi(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/NFd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private iMK()Lorg/json/JSONObject;
    .locals 9
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    const/4 v0, 0x0

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 319
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    const-string v3, "TTAD.AndroidObject"

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/view/View;)[I

    move-result-object v4

    .line 325
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->cJ(Landroid/view/View;)[I

    move-result-object v2

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 330
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 331
    const-string v5, "x"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    aget v8, v4, v7

    aget v7, v2, v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v5, "y"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    aget v4, v4, v7

    aget v2, v2, v7

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-static {v6, v2}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 333
    const-string v2, "w"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    const-string v2, "h"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->ac(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 335
    const-string v1, "isExist"

    invoke-virtual {v3, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v3

    .line 327
    :cond_2
    :goto_0
    const-string v1, "setCloseButtonInfo error position or webViewPosition is null"

    invoke-static {v3, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 321
    :cond_3
    :goto_1
    const-string v1, "setCloseButtonInfo error closeButton is null"

    invoke-static {v3, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private iMK(Lorg/json/JSONObject;)V
    .locals 19
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1290
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 1293
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/cJ/pA;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;-><init>()V

    const/4 v3, 0x1

    .line 1294
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(I)V

    .line 1296
    :try_start_0
    const-string v4, "isRenderSuc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1297
    const-string v5, "AdSize"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1300
    const-string v6, "height"

    const-string v7, "width"

    if-eqz v5, :cond_1

    .line 1301
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 1302
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 1304
    :goto_0
    const-string v5, "videoInfo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v5, :cond_3

    .line 1310
    :try_start_2
    const-string v12, "x"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 1311
    const-string v14, "y"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    move/from16 v16, v4

    .line 1312
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 1313
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 1314
    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/NFd;->pA(Lorg/json/JSONObject;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1315
    const-string v0, "borderRadiusTopLeft"

    move-wide/from16 v17, v10

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(F)V

    .line 1316
    const-string v0, "borderRadiusTopRight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ(F)V

    .line 1317
    const-string v0, "borderRadiusBottomLeft"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->ac(F)V

    .line 1318
    const-string v0, "borderRadiusBottomRight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->CJ(F)V

    goto :goto_1

    :cond_2
    move-wide/from16 v17, v10

    .line 1320
    :goto_1
    invoke-virtual {v2, v12, v13}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->ac(D)V

    .line 1321
    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->CJ(D)V

    .line 1322
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->fl(D)V

    .line 1323
    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Tgh(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    const/16 v1, 0x65

    move-object/from16 v0, p0

    goto :goto_3

    :cond_3
    move/from16 v16, v4

    move-wide/from16 v17, v10

    .line 1325
    :goto_2
    :try_start_3
    const-string v0, "message"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v3, 0x65

    :try_start_4
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    const-string v4, "code"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v3, v16

    .line 1327
    :try_start_5
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(Z)V

    .line 1328
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(D)V

    move-wide/from16 v8, v17

    .line 1329
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ(D)V

    .line 1330
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v0, p0

    .line 1332
    :try_start_6
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/zc;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    if-eqz v5, :cond_4

    .line 1333
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ip:Lcom/bytedance/sdk/openadsdk/WAv/ROR;

    if-eqz v1, :cond_4

    .line 1334
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/WAv/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    return-void

    :catch_1
    move-object/from16 v0, p0

    move v1, v3

    goto :goto_3

    :catch_2
    move-object/from16 v0, p0

    :catch_3
    const/16 v1, 0x65

    .line 1340
    :goto_3
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->cJ(I)V

    .line 1341
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->Qhi(Ljava/lang/String;)V

    .line 1342
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/zc;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V

    :cond_5
    :goto_4
    return-void
.end method

.method private kYc()V
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->NFd:Lcom/bytedance/sdk/openadsdk/WAv/WAv;

    if-nez v0, :cond_0

    return-void

    .line 917
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/WAv/WAv;->cJ()V

    return-void
.end method

.method private kYc(Lorg/json/JSONObject;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1399
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->lB:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1400
    const-string v2, "creatives"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method private pA()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 399
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "appInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "adInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "getTemplateInfo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "getTeMaiAds"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private pA(Lorg/json/JSONObject;)Z
    .locals 1

    .line 1352
    const-string v0, "borderRadiusTopLeft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusBottomLeft"

    .line 1353
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusTopRight"

    .line 1354
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusBottomRight"

    .line 1355
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private qMt()Lorg/json/JSONObject;
    .locals 10
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .line 1189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1190
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 1194
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Hy()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1195
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1196
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->WAv(Ljava/lang/String;)I

    move-result v4

    .line 1197
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->tP(Ljava/lang/String;)I

    move-result v5

    .line 1198
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Tgh(Ljava/lang/String;)Z

    move-result v6

    .line 1200
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ABk(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v7, v8

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    const/4 v9, 0x7

    if-eq v3, v9, :cond_5

    const/16 v9, 0x8

    if-ne v3, v9, :cond_4

    goto :goto_3

    .line 1206
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ac(Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    .line 1204
    :cond_5
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->HzH(Ljava/lang/String;)Z

    move-result v1

    .line 1208
    :goto_4
    const-string v3, "voice_control"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1209
    const-string v1, "rv_skip_time"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1210
    const-string v1, "fv_skip_show"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1211
    const-string v1, "iv_skip_time"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1212
    const-string v1, "show_dislike"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->rB()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v8

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1213
    const-string v1, "video_adaptation"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->aP()I

    move-result v3

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1214
    const-string v1, "skip_change_to_close"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1216
    const-string v1, "bar_render_platform"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hU()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->gT()Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, v8

    :cond_8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method private tP()V
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 1112
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi()V

    :cond_0
    return-void
.end method

.method private tP(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1624
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1626
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1627
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/zc;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private zc(Lorg/json/JSONObject;)V
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1153
    :cond_0
    :try_start_0
    const-string v0, "stateType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1154
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zc:Ljava/lang/String;

    return-object p0
.end method

.method public CJ(Lorg/json/JSONObject;)V
    .locals 2

    .line 1990
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cJ;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1992
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 1994
    invoke-direct {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public CJ(Z)V
    .locals 0

    .line 1979
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->xyz:Z

    return-void
.end method

.method public CJ()Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bxS()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Gm()V
    .locals 1

    .line 1899
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm:Lcom/bytedance/sdk/openadsdk/Sf/ac;

    if-eqz v0, :cond_0

    .line 1900
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sf/ac;->Qhi()V

    :cond_0
    const/4 v0, 0x0

    .line 1902
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    .line 1903
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->dIT:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    return-void
.end method

.method public Qhi()Lcom/bytedance/sdk/component/Qhi/kYc;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    return-object v0
.end method

.method public Qhi(I)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 344
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->pA:I

    return-object p0
.end method

.method public Qhi(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 1

    .line 311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/zc;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 2

    .line 220
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 228
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Landroid/webkit/WebView;)Lcom/bytedance/sdk/component/Qhi/Gm;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/hm/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/hm/Qhi;-><init>()V

    .line 229
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi(Lcom/bytedance/sdk/component/Qhi/Qhi;)Lcom/bytedance/sdk/component/Qhi/Gm;

    move-result-object v0

    const-string v1, "ToutiaoJSBridge"

    .line 230
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Qhi/Gm;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/NFd$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/NFd$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 231
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi(Lcom/bytedance/sdk/component/Qhi/ABk;)Lcom/bytedance/sdk/component/Qhi/Gm;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi(Z)Lcom/bytedance/sdk/component/Qhi/Gm;

    move-result-object v0

    const/4 v1, 0x1

    .line 247
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Qhi/Gm;->cJ(Z)Lcom/bytedance/sdk/component/Qhi/Gm;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi()Lcom/bytedance/sdk/component/Qhi/Gm;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Qhi/Gm;->cJ()Lcom/bytedance/sdk/component/Qhi/kYc;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 260
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 261
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ac;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 262
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 263
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/Sf;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 264
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/WAv;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/component/widget/SSWebView;)V

    .line 266
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/hm/Qhi/ROR;->Qhi(Lcom/bytedance/sdk/component/Qhi/kYc;Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    :catch_0
    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/Sf/fl;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->EBS:Lcom/bytedance/sdk/openadsdk/Sf/fl;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Qhi;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->bxS:Lcom/bytedance/sdk/openadsdk/WAv/Qhi;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/ROR;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ip:Lcom/bytedance/sdk/openadsdk/WAv/ROR;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/Tgh;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Dww:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/WAv;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->NFd:Lcom/bytedance/sdk/openadsdk/WAv/WAv;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/cJ;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->aP:Lcom/bytedance/sdk/openadsdk/WAv/cJ;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/WAv/fl;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->CQU:Lcom/bytedance/sdk/openadsdk/WAv/fl;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zn:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/fl;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Eh:Lcom/bytedance/sdk/openadsdk/core/cJ/fl;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->et()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->kYc:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->PAe:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/Qhi;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ROR:Lcom/bytedance/sdk/openadsdk/core/widget/ac;

    return-object p0
.end method

.method public Qhi(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/tP;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/NFd;"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->lB:Ljava/util/List;

    return-object p0
.end method

.method public Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/NFd;"
        }
    .end annotation

    .line 408
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi:Ljava/util/Map;

    return-object p0
.end method

.method public Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt:Lorg/json/JSONObject;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 296
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ:Z

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;I)Lorg/json/JSONObject;
    .locals 22
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 555
    const-string v3, "call"

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->Qhi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 561
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH()Z

    move-result v3

    const-string v5, "TTAD.AndroidObject"

    if-eqz v3, :cond_1

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "[JSB-REQ] version:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " method:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->ac:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 565
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->ac:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x1

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v6, v10

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "landscape_click"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/16 v6, 0x22

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "skipVideo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    const/16 v6, 0x21

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "sendLog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const/16 v6, 0x20

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "playable_style"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    const/16 v6, 0x1f

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "getNetworkData"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    const/16 v6, 0x1e

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "endcard_load"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const/16 v6, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "removeLoading"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_0

    :cond_8
    const/16 v6, 0x1c

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "renderDidFinish"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_0

    :cond_9
    const/16 v6, 0x1b

    goto/16 :goto_1

    :sswitch_8
    const-string v7, "muteVideo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_0

    :cond_a
    const/16 v6, 0x1a

    goto/16 :goto_1

    :sswitch_9
    const-string v7, "pauseWebViewTimers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0x19

    goto/16 :goto_1

    :sswitch_a
    const-string v7, "getVolume"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x18

    goto/16 :goto_1

    :sswitch_b
    const-string v7, "getCurrentVideoState"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v6, 0x17

    goto/16 :goto_1

    :sswitch_c
    const-string v7, "cancel_download_app_ad"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v6, 0x16

    goto/16 :goto_1

    :sswitch_d
    const-string v7, "getTemplateInfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v6, 0x15

    goto/16 :goto_1

    :sswitch_e
    const-string v7, "dynamicTrack"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v6, 0x14

    goto/16 :goto_1

    :sswitch_f
    const-string v7, "sendReward"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v6, 0x13

    goto/16 :goto_1

    :sswitch_10
    const-string v7, "getNativeSiteCustomData"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v6, 0x12

    goto/16 :goto_1

    :sswitch_11
    const-string v7, "isViewable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v6, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string v7, "getCloseButtonInfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v6, 0x10

    goto/16 :goto_1

    :sswitch_13
    const-string v7, "unsubscribe_app_ad"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v6, 0xf

    goto/16 :goto_1

    :sswitch_14
    const-string v7, "close"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v6, 0xe

    goto/16 :goto_1

    :sswitch_15
    const-string v7, "download_app_ad"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_16
    const-string v7, "getTeMaiAds"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v6, 0xc

    goto/16 :goto_1

    :sswitch_17
    const-string v7, "send_temai_product_ids"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v6, 0xb

    goto/16 :goto_1

    :sswitch_18
    const-string v7, "getMaterialMeta"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v6, 0xa

    goto/16 :goto_1

    :sswitch_19
    const-string v7, "openPrivacy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_1a
    const-string v7, "getScreenSize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_1b
    const-string v7, "appInfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v6, 0x7

    goto :goto_1

    :sswitch_1c
    const-string v7, "clickEvent"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v6, 0x6

    goto :goto_1

    :sswitch_1d
    const-string v7, "webview_time_track"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v6, 0x5

    goto :goto_1

    :sswitch_1e
    const-string v7, "openAdLandPageLinks"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto/16 :goto_0

    :cond_20
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_1f
    const-string v7, "changeVideoState"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto/16 :goto_0

    :cond_21
    move v6, v8

    goto :goto_1

    :sswitch_20
    const-string v7, "pauseWebView"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto/16 :goto_0

    :cond_22
    const/4 v6, 0x2

    goto :goto_1

    :sswitch_21
    const-string v7, "adInfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto/16 :goto_0

    :cond_23
    move v6, v11

    goto :goto_1

    :sswitch_22
    const-string v7, "subscribe_app_ad"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_24

    goto/16 :goto_0

    :cond_24
    move v6, v9

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 696
    :pswitch_0
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    instance-of v6, v4, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    if-eqz v6, :cond_2c

    .line 697
    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->CJ()V

    goto/16 :goto_3

    .line 710
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP()V

    goto/16 :goto_3

    .line 573
    :pswitch_2
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    if-eqz v4, :cond_2c

    .line 575
    const-string v6, "extJson"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2c

    .line 576
    const-string v7, "category"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 577
    const-string v8, "tag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 578
    const-string v9, "label"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2c

    .line 579
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 580
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 581
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 583
    const-string v8, "value"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 584
    const-string v8, "extValue"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 587
    :try_start_0
    const-string v4, "ua_policy"

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->pA:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :catch_0
    const-string v4, "click"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 592
    invoke-direct {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 595
    :cond_25
    invoke-direct {v0, v7, v15}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 596
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/HzH;->CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v4

    .line 597
    invoke-direct {v0, v6, v4, v15}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 598
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-object/from16 v20, v6

    move/from16 v21, v4

    invoke-static/range {v12 .. v21}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Z)V

    goto/16 :goto_3

    .line 603
    :pswitch_3
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Sf(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 728
    :pswitch_4
    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 731
    :pswitch_5
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->WAv(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 648
    :pswitch_6
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->CQU:Lcom/bytedance/sdk/openadsdk/WAv/fl;

    if-eqz v4, :cond_2c

    .line 649
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/WAv/fl;->Qhi()V

    goto/16 :goto_3

    .line 704
    :pswitch_7
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->iMK(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 713
    :pswitch_8
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Gm(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 737
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->kYc()V

    goto/16 :goto_3

    .line 637
    :pswitch_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v4

    const-string v6, "audio"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    if-eqz v4, :cond_26

    .line 640
    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    :cond_26
    if-gtz v10, :cond_27

    move v9, v11

    .line 645
    :cond_27
    const-string v4, "endcard_mute"

    invoke-virtual {v3, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 719
    :pswitch_b
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk(Lorg/json/JSONObject;)Z

    goto/16 :goto_3

    .line 606
    :pswitch_c
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt:Lorg/json/JSONObject;

    if-eqz v3, :cond_28

    .line 607
    const-string v4, "setting"

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 608
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v3, :cond_28

    .line 609
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt:Lorg/json/JSONObject;

    const-string v6, "extension"

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wp()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 612
    :cond_28
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt:Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 707
    :pswitch_d
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->hpZ(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 653
    :pswitch_e
    iput-boolean v11, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac:Z

    .line 654
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Dww:Lcom/bytedance/sdk/openadsdk/WAv/Tgh;

    if-eqz v4, :cond_2c

    .line 655
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/WAv/Tgh;->Qhi()V

    goto/16 :goto_3

    .line 755
    :pswitch_f
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 756
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Jma()Ljava/lang/String;

    move-result-object v4

    const-string v6, "data"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 620
    :pswitch_10
    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->js:Z

    const-string v6, "viewStatus"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 631
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->iMK()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2c

    goto :goto_2

    .line 691
    :pswitch_12
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm:Lcom/bytedance/sdk/openadsdk/Sf/ac;

    if-eqz v4, :cond_2c

    .line 692
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-interface {v4, v6}, Lcom/bytedance/sdk/openadsdk/Sf/ac;->Qhi(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 761
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Tgh()V

    goto/16 :goto_3

    .line 669
    :pswitch_14
    iput-boolean v11, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->FQ:Z

    .line 670
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    invoke-static {v6, v7, v11, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 671
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Eh:Lcom/bytedance/sdk/openadsdk/core/cJ/fl;

    if-eqz v6, :cond_29

    .line 672
    iget-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->sDy:Z

    invoke-interface {v6, v4}, Lcom/bytedance/sdk/openadsdk/core/cJ/fl;->cJ(Z)V

    goto/16 :goto_3

    .line 674
    :cond_29
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm:Lcom/bytedance/sdk/openadsdk/Sf/ac;

    if-eqz v6, :cond_2a

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    if-eqz v7, :cond_2a

    .line 675
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    invoke-interface {v6, v7, v4, v8}, Lcom/bytedance/sdk/openadsdk/Sf/ac;->Qhi(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 676
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->dIT:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    if-eqz v4, :cond_2c

    .line 677
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->CJ()V

    goto/16 :goto_3

    .line 680
    :cond_2a
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    const/4 v8, -0x2

    invoke-static {v6, v7, v8, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 615
    :pswitch_15
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->pM:Lorg/json/JSONObject;

    if-eqz v4, :cond_2c

    :goto_2
    move-object v3, v4

    goto/16 :goto_3

    .line 722
    :pswitch_16
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 725
    :pswitch_17
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->kYc(Lorg/json/JSONObject;)Z

    goto/16 :goto_3

    .line 744
    :pswitch_18
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ()V

    goto/16 :goto_3

    .line 623
    :pswitch_19
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->bxS:Lcom/bytedance/sdk/openadsdk/WAv/Qhi;

    if-eqz v4, :cond_2c

    .line 624
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/WAv/Qhi;->cJ()I

    move-result v4

    .line 625
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->bxS:Lcom/bytedance/sdk/openadsdk/WAv/Qhi;

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/WAv/Qhi;->Qhi()I

    move-result v6

    .line 626
    const-string v7, "width"

    invoke-virtual {v3, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    const-string v4, "height"

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 567
    :pswitch_1a
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->fl:I

    invoke-direct {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;I)V

    goto :goto_3

    .line 701
    :pswitch_1b
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 740
    :pswitch_1c
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 748
    :pswitch_1d
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    .line 749
    invoke-direct {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 750
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 716
    :pswitch_1e
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/NFd;->zc(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 734
    :pswitch_1f
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH()V

    goto :goto_3

    .line 570
    :pswitch_20
    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ROR(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 659
    :pswitch_21
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->bxS()V

    .line 660
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    invoke-static {v6, v7, v9, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 661
    iget-object v13, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    if-eqz v13, :cond_2b

    .line 662
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm:Lcom/bytedance/sdk/openadsdk/Sf/ac;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->CJ:Lorg/json/JSONObject;

    iget-object v15, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zc:Ljava/lang/String;

    iget v4, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    iget-boolean v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->hpZ:Z

    move/from16 v16, v4

    move/from16 v17, v6

    invoke-interface/range {v12 .. v17}, Lcom/bytedance/sdk/openadsdk/Sf/ac;->Qhi(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    goto :goto_3

    .line 664
    :cond_2b
    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    invoke-static {v6, v7, v10, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILorg/json/JSONObject;)V

    :cond_2c
    :goto_3
    :pswitch_22
    if-ne v2, v11, :cond_2d

    .line 770
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->cJ:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 771
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;->cJ:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 772
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->HzH()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[JSB-RSP] version:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7966d06a -> :sswitch_22
        -0x54d5e48f -> :sswitch_21
        -0x4f555ebd -> :sswitch_20
        -0x45af975a -> :sswitch_1f
        -0x3d07124e -> :sswitch_1e
        -0x325352a1 -> :sswitch_1d
        -0x2fbc0e0e -> :sswitch_1c
        -0x2f57a591 -> :sswitch_1b
        -0x2aa0497d -> :sswitch_1a
        -0x1e7a3222 -> :sswitch_19
        -0x1d2a69be -> :sswitch_18
        -0x1097c80a -> :sswitch_17
        -0xa5b419e -> :sswitch_16
        0x1a8c298 -> :sswitch_15
        0x5a5ddf8 -> :sswitch_14
        0x642ec2f -> :sswitch_13
        0x17d08ce2 -> :sswitch_12
        0x18049cc9 -> :sswitch_11
        0x195bc1cf -> :sswitch_10
        0x1a6244d7 -> :sswitch_f
        0x220cf04c -> :sswitch_e
        0x26c16abe -> :sswitch_d
        0x281c12d3 -> :sswitch_c
        0x2a6ab279 -> :sswitch_b
        0x34c20a10 -> :sswitch_a
        0x420130f1 -> :sswitch_9
        0x44a639e2 -> :sswitch_8
        0x49bca8fc -> :sswitch_7
        0x5b52a418 -> :sswitch_6
        0x616caa3a -> :sswitch_5
        0x66233dc2 -> :sswitch_4
        0x673944c0 -> :sswitch_3
        0x7602ce9c -> :sswitch_2
        0x7c55d63c -> :sswitch_1
        0x7d77e304 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_22
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Qhi(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1911
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 1912
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;

    if-eqz v0, :cond_1

    .line 1914
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd$cJ;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/NFd$Qhi;)V
    .locals 0

    .line 2089
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qe:Lcom/bytedance/sdk/openadsdk/core/NFd$Qhi;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;)V
    .locals 0

    .line 2072
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->dIT:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 2

    .line 1095
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1099
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1100
    const-string p1, "time"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 1101
    const-string v1, "flag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v1, :cond_1

    .line 1103
    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->Qhi(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 1106
    :catch_0
    const-string p1, "TTAD.AndroidObject"

    const-string v0, "requestPauseVideo json exception"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1933
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V
    .locals 7
    .annotation runtime Lcom/bytedance/JProtect;
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1492
    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd$9;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/NFd$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V

    .line 1503
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->zc:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 1507
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result p2

    .line 1508
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->lB()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    .line 1509
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/qMt;-><init>()V

    const/4 v3, 0x1

    .line 1510
    iput-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Tgh:Z

    .line 1511
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 1512
    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->Sf:I

    .line 1514
    :cond_2
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->kYc:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    .line 1516
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    if-eqz p1, :cond_4

    .line 1519
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 1520
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1521
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1522
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1525
    :cond_4
    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/model/qMt;->ROR:Lorg/json/JSONObject;

    .line 1526
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object p1

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/NFd$10;

    invoke-direct {v3, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lcom/bytedance/sdk/openadsdk/WAv/ac;)V

    invoke-interface {p1, v1, v2, p2, v3}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/qMt;ILcom/bytedance/sdk/openadsdk/core/tP$Qhi;)V

    return-void

    :cond_5
    :goto_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 1504
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/WAv/ac;->Qhi(ZLjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1549
    const-string p2, "TTAD.AndroidObject"

    const-string v0, "get ads error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Qhi(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1698
    :cond_0
    :try_start_0
    const-string v1, "bytedance"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 1701
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 1702
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/NFd;->Sf:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method public ROR()V
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 1128
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->cJ()V

    :cond_0
    return-void
.end method

.method public Sf()Z
    .locals 1

    .line 1604
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->FQ:Z

    return v0
.end method

.method public Tgh()V
    .locals 2

    .line 843
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->jPH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->aP:Lcom/bytedance/sdk/openadsdk/WAv/cJ;

    if-eqz v0, :cond_0

    .line 844
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/WAv/cJ;->Qhi()V

    return-void

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/MQ;->Qhi(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public Tgh(Ljava/lang/String;)V
    .locals 0

    .line 1133
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    return-void
.end method

.method public Tgh(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2055
    :cond_0
    const-string v0, "index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 2056
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    if-eqz v1, :cond_1

    .line 2057
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->XJ()Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2059
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 2060
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 2061
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 2062
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Z)V

    .line 2063
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->dIT:Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;

    if-eqz p1, :cond_1

    .line 2064
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/ac/cJ;->CJ()V

    :cond_1
    return-void
.end method

.method public WAv()V
    .locals 0

    .line 1884
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->EBS()Z

    return-void
.end method

.method public ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->WAv:Ljava/lang/String;

    return-object p0
.end method

.method public ac()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0
.end method

.method public ac(I)V
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MQ:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;

    if-eqz v0, :cond_0

    .line 1804
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;->cJ(I)V

    :cond_0
    return-void
.end method

.method public ac(Lorg/json/JSONObject;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 1230
    :cond_0
    const-string v2, "TTAD.AndroidObject"

    const-string v3, "trigger Class1 method1"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 1233
    :try_start_0
    const-string v4, "adId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1234
    const-string v5, "areaType"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1235
    const-string v7, "clickAreaType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1236
    const-string v8, "clickInfo"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_1

    .line 1241
    const-string v11, "down_x"

    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 1242
    const-string v13, "down_y"

    invoke-virtual {v8, v13, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    .line 1243
    const-string v15, "up_x"

    invoke-virtual {v8, v15, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v15

    .line 1244
    const-string v6, "up_y"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v17

    .line 1245
    const-string v6, "down_time"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v19

    .line 1246
    const-string v6, "up_time"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v21

    .line 1247
    const-string v6, "button_x"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v23

    .line 1248
    const-string v6, "button_y"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v25

    .line 1249
    const-string v6, "button_width"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v27

    .line 1250
    const-string v6, "button_height"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 1251
    const-string v6, "rectInfo"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-wide/from16 v39, v9

    move-wide v9, v11

    move-wide v11, v15

    move-wide/from16 v29, v19

    move-wide/from16 v31, v21

    move-wide/from16 v33, v23

    move-wide/from16 v35, v25

    move-wide/from16 v37, v27

    move-object/from16 v16, v4

    move-wide/from16 v3, v17

    goto :goto_0

    :cond_1
    move-object/from16 v16, v4

    move-wide v3, v9

    move-wide v11, v3

    move-wide v13, v11

    move-wide/from16 v29, v13

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    move-wide/from16 v39, v37

    const/4 v6, 0x0

    .line 1253
    :goto_0
    const-string v15, "clickAreaCategory"

    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1254
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;-><init>()V

    double-to-float v9, v9

    .line 1255
    invoke-virtual {v15, v9}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v9

    double-to-float v10, v13

    .line 1256
    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v9

    double-to-float v10, v11

    .line 1257
    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v9

    double-to-float v3, v3

    .line 1258
    invoke-virtual {v9, v3}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    move-wide/from16 v9, v29

    double-to-long v9, v9

    .line 1259
    invoke-virtual {v3, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    move-wide/from16 v9, v31

    double-to-long v9, v9

    .line 1260
    invoke-virtual {v3, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(J)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    move-wide/from16 v9, v33

    double-to-int v4, v9

    .line 1261
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->ac(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    move-wide/from16 v9, v35

    double-to-int v4, v9

    .line 1262
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->CJ(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    move-wide/from16 v9, v37

    double-to-int v4, v9

    .line 1263
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->fl(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    move-wide/from16 v9, v39

    double-to-int v4, v9

    .line 1264
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Tgh(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    .line 1265
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    const/4 v4, 0x0

    .line 1266
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    const/4 v4, 0x1

    .line 1267
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    .line 1268
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    .line 1269
    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v3

    .line 1270
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi(I)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v1

    .line 1271
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->cJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;

    move-result-object v1

    .line 1272
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/pA$Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/pA;

    move-result-object v1

    .line 1274
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 1275
    invoke-interface {v3, v4, v5, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/zc;->Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V

    :cond_2
    move-object/from16 v3, v16

    .line 1277
    invoke-direct {v0, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/pA;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1279
    :catch_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/NFd;->tP:Lcom/bytedance/sdk/component/adexpress/cJ/zc;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    .line 1280
    invoke-interface {v1, v3, v2, v3}, Lcom/bytedance/sdk/component/adexpress/cJ/zc;->Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V

    :cond_3
    return-void
.end method

.method public ac(Z)V
    .locals 0

    .line 1600
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac:Z

    return-void
.end method

.method public adInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 930
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 932
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ROR(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public appInfo()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 943
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 945
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 951
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cJ(I)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 389
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    return-object p0
.end method

.method public cJ(Lcom/bytedance/sdk/component/widget/SSWebView;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 1

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->CJ:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Tgh:Ljava/lang/String;

    return-object p0
.end method

.method public cJ(Z)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 301
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->js:Z

    return-object p0
.end method

.method public cJ()V
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    if-nez v0, :cond_0

    return-void

    .line 352
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi()V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->es:Lcom/bytedance/sdk/component/Qhi/kYc;

    return-void
.end method

.method public cJ(Landroid/net/Uri;)V
    .locals 2

    .line 1713
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1714
    const-string v1, "log_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "custom_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "log_event_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1774
    :cond_0
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dispatch_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1775
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->hm(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 1715
    :cond_3
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd$2;

    const-string v1, "log_event_handleUri"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public cJ(Lorg/json/JSONObject;)V
    .locals 8

    .line 856
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->hpZ()Landroid/content/Context;

    move-result-object v0

    .line 857
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->MND:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    .line 858
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->yN:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk:I

    .line 864
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ROR:Lcom/bytedance/sdk/openadsdk/core/widget/ac;

    move-object v2, p1

    .line 858
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/kYc;->Qhi(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V

    return-void
.end method

.method public changeVideoState(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1024
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1025
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/NFd$4;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public chooseAdResult(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1953
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1954
    const-string p1, "video_choose"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 1955
    const-string v1, "video_choose_duration"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1956
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ip:Lcom/bytedance/sdk/openadsdk/WAv/ROR;

    if-eqz v2, :cond_0

    .line 1957
    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/WAv/ROR;->Qhi(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public clickEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1042
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1044
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/NFd$5;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dynamicTrack(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1012
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->hpZ(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->iMK:Ljava/lang/String;

    return-object p0
.end method

.method public fl(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 2015
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2017
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2018
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    if-eqz v2, :cond_0

    .line 2019
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/MQ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/MQ;->XJ()Lcom/bytedance/sdk/openadsdk/core/model/Qhi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Qhi;->ac()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 2020
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2021
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 2022
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/NFd;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2025
    :cond_0
    const-string v1, "creatives"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public fl(Z)V
    .locals 0

    .line 1983
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->jPH:Z

    return-void
.end method

.method public fl()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->ac:Z

    return v0
.end method

.method public getCurrentVideoState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1070
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1071
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->ABk(Lorg/json/JSONObject;)Z

    .line 1072
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    .line 956
    const-string v1, "getTemplateInfo"

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Z)V

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 959
    const-string v2, "setting"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 960
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    .line 961
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt:Lorg/json/JSONObject;

    const-string v3, "extension"

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->wp()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v0, 0x0

    .line 964
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Z)V

    .line 965
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->qMt:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 971
    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method hm()Z
    .locals 3

    .line 1795
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->HzH:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1798
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->yN()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public initRenderFinish()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1082
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/NFd$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 997
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 998
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/NFd$3;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1005
    :catch_0
    const-string p1, "TTAD.AndroidObject"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public renderDidFinish(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 980
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 981
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/NFd;->iMK(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public skipVideo()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1060
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/NFd$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/NFd$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/NFd;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zc()V
    .locals 1

    .line 1973
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qe:Lcom/bytedance/sdk/openadsdk/core/NFd$Qhi;

    if-eqz v0, :cond_0

    .line 1974
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/NFd$Qhi;->Qhi()V

    :cond_0
    return-void
.end method
