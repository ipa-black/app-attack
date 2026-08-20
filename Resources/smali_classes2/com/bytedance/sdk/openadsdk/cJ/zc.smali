.class public Lcom/bytedance/sdk/openadsdk/cJ/zc;
.super Ljava/lang/Object;
.source "LandingPageLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/cJ/zc$Qhi;
    }
.end annotation


# static fields
.field private static final cJ:[I


# instance fields
.field private ABk:Ljava/lang/String;

.field private CJ:J

.field private CQU:J

.field private Dww:J

.field private EBS:J

.field private final Eh:Z

.field private volatile FQ:I

.field private Gm:Z

.field private HzH:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

.field private Jma:Lcom/bytedance/sdk/openadsdk/cJ/Gm;

.field private final MND:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private MQ:Ljava/lang/String;

.field private NFd:Landroid/webkit/WebView;

.field private PAe:I

.field private Qe:J

.field public Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

.field private final ROR:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Sf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private WAv:I

.field private final YB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final aP:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ac:I

.field private bxS:J

.field private cjC:Ljava/lang/String;

.field private dIT:Ljava/lang/String;

.field private final es:Ljava/util/concurrent/atomic/AtomicInteger;

.field private fl:I

.field private final hm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private hpZ:Z

.field private final iMK:Landroid/content/Context;

.field private volatile ip:J

.field private volatile jPH:J

.field private volatile js:J

.field private kYc:Lcom/bytedance/sdk/openadsdk/cJ/hm;

.field private lB:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

.field private lG:Z

.field private pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

.field private pM:Z

.field private qMt:J

.field private sDy:Z

.field private final tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private volatile xyz:J

.field private final yN:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zc:Ljava/lang/String;

.field private final zn:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x4b

    const/16 v1, 0x64

    const/16 v2, 0xa

    const/16 v3, 0x1e

    const/16 v4, 0x32

    .line 83
    filled-new-array {v2, v3, v4, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ:[I

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;)V
    .locals 7

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac:I

    const-wide/16 v1, -0x1

    .line 87
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CJ:J

    const/4 v3, 0x1

    .line 89
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    .line 90
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ROR:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Sf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, -0x1

    .line 94
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv:I

    .line 111
    const-string v4, "landingpage"

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    const-wide/16 v4, 0x0

    .line 112
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->qMt:J

    .line 113
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->EBS:J

    .line 114
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->bxS:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Dww:J

    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CQU:J

    .line 115
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pM:Z

    .line 116
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Eh:Z

    .line 118
    new-instance v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->aP:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->sDy:Z

    .line 122
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lG:Z

    .line 124
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->js:J

    .line 125
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zn:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->es:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 127
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->yN:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->FQ:I

    .line 129
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    .line 133
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MND:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->YB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->iMK:Landroid/content/Context;

    .line 150
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 151
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->xyz()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    invoke-direct {v3, v4, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;-><init>(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    .line 154
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac()Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR$Qhi;

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jPH()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->vml()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/hm;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/hm;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->kYc:Lcom/bytedance/sdk/openadsdk/cJ/hm;

    .line 162
    :cond_2
    instance-of p2, p2, Lcom/bytedance/sdk/component/widget/PangleWebView;

    if-eqz p2, :cond_3

    .line 163
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    check-cast p2, Lcom/bytedance/sdk/component/widget/PangleWebView;

    iget-wide v3, p2, Lcom/bytedance/sdk/component/widget/PangleWebView;->Qhi:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qe:J

    goto :goto_0

    .line 165
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qe:J

    .line 169
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/zc$Qhi;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/cJ/zc$Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/cJ/zc$1;)V

    const-string v3, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {p2, v0, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 171
    const-string v0, "LandingPageLog"

    const-string v3, "addJavascriptInterface exception"

    invoke-static {v0, v3, p2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz p1, :cond_4

    .line 174
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->KW()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 175
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->KW()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "page_id"

    invoke-virtual {p1, p2, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CJ:J

    .line 177
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cjC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/cJ/Gm;I)V
    .locals 0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Landroid/webkit/WebView;)V

    .line 144
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Jma:Lcom/bytedance/sdk/openadsdk/cJ/Gm;

    .line 145
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;)Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object p0
.end method

.method private Qhi(ILjava/lang/String;)V
    .locals 7

    .line 767
    const-string v0, "\""

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->cJ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 770
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 771
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->cJ:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 772
    const-string v3, "cid"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 773
    const-string v3, "ad_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 774
    const-string v3, "log_extra"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 775
    const-string v3, "\"/** adInfo **/\""

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v1, "\"/** first_page **/\""

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string p1, "\"/** ix_to_externalurl **/\""

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CJ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    const-string v3, "0"

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "1"

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-static {v2, p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string p1, "\"/** preload_status **/\""

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const-string v3, "2"

    :cond_2
    invoke-static {v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string p1, "\"/** scene_state **/\""

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string p1, "\"/** web_init_time **/\""

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qe:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string p1, "\"/** channel_name **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string p1, "\"/** session_id **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string p1, "\"/** web_url **/\""

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 786
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 787
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    if-eqz p2, :cond_3

    .line 788
    new-instance p2, Lcom/bytedance/sdk/openadsdk/cJ/zc$3;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/zc$3;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 797
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;ILjava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(ILjava/lang/String;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Sf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 304
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc8

    if-le v1, v3, :cond_4

    const/16 v1, 0x26

    .line 305
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    const/16 v4, 0x12c

    if-eq v1, v3, :cond_0

    if-le v1, v4, :cond_1

    :cond_0
    const/16 v1, 0x3f

    .line 307
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :cond_1
    if-eq v1, v3, :cond_3

    if-le v1, v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    .line 312
    :cond_3
    :goto_0
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 314
    :cond_4
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    const-string p1, "type"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :catchall_0
    const-string p1, "load_finish_progress"

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_5
    return-void
.end method

.method private Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    const-wide/16 v0, -0x1

    .line 609
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 14

    move-object v7, p0

    .line 613
    iget-boolean v0, v7, Lcom/bytedance/sdk/openadsdk/cJ/zc;->sDy:Z

    if-nez v0, :cond_0

    return-void

    .line 616
    :cond_0
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 620
    :cond_1
    iget-object v0, v7, Lcom/bytedance/sdk/openadsdk/cJ/zc;->HzH:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    move v4, v0

    .line 624
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, v7, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v11, v7, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    new-instance v13, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v2, p2

    move-object v3, p1

    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/cJ/zc$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Lorg/json/JSONObject;Ljava/lang/String;IJ)V

    move-object v12, p1

    invoke-static/range {v8 .. v13}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private Qhi(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 719
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv()I

    move-result p1

    .line 720
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;

    const-string v1, "sendPrefLog"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/zc$2;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/zc;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/cJ/zc;Lcom/bytedance/sdk/openadsdk/core/settings/Sf;Ljava/lang/String;)Z
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/Sf;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/settings/Sf;Ljava/lang/String;)Z
    .locals 3

    .line 815
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :pswitch_1
    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_1

    return v1

    .line 821
    :pswitch_3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->Tgh:Z

    return p1

    .line 819
    :pswitch_4
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->fl:Z

    return p1

    .line 817
    :pswitch_5
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/Sf;->CJ:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private WAv()I
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 803
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    :cond_0
    return v1
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/cJ/zc;)Landroid/webkit/WebView;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    return-object p0
.end method

.method private ac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 472
    const-string v0, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/cJ/zc;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->aP:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private hm()Z
    .locals 1

    .line 468
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ttc()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public CJ()V
    .locals 2

    .line 235
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ip:J

    .line 237
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->dIT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/openadsdk/cJ/zc;
    .locals 0

    .line 211
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->sDy:Z

    return-object p0
.end method

.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    return-object v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 198
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 181
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->EBS:J

    return-void
.end method

.method public Qhi(Landroid/view/MotionEvent;)V
    .locals 6

    .line 681
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hpZ:Z

    if-eqz v1, :cond_0

    .line 682
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(Landroid/view/MotionEvent;)V

    .line 684
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 685
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->js:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 688
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->es:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 689
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->yN:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_2

    .line 690
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 692
    :try_start_0
    const-string v0, "url"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :catch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->js:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-string v2, "click_time"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 262
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->js:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->js:J

    .line 265
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->bxS:J

    cmp-long v0, v0, v2

    const/16 v1, 0x64

    if-nez v0, :cond_2

    if-lez p2, :cond_2

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->bxS:J

    goto :goto_0

    .line 267
    :cond_2
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Dww:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Dww:J

    .line 270
    :cond_3
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac:I

    sget-object v2, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ:[I

    array-length v2, v2

    if-eq v0, v2, :cond_6

    .line 271
    const-string v0, "landingpage"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "landingpage_endcard"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "landingpage_split_screen"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "landingpage_direct"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "aggregate_page"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 273
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac:I

    :goto_1
    sget-object v2, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cJ:[I

    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 274
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac:I

    aget v3, v2, v3

    if-lt p2, v3, :cond_6

    add-int/lit8 v3, v0, 0x1

    .line 277
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac:I

    .line 278
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 280
    :try_start_0
    const-string v5, "url"

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CJ:J

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_5

    .line 282
    const-string v7, "page_id"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 284
    :cond_5
    const-string v5, "render_type"

    const-string v6, "h5"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v5, "render_type_2"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v5, "pct"

    aget v0, v2, v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :catch_0
    const-string v0, "progress_load_finish"

    invoke-direct {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    move v0, v3

    goto :goto_1

    :cond_6
    if-ne p2, v1, :cond_7

    .line 296
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Dww:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->bxS:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string p2, "progress"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 476
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lB:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 477
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi(Lorg/json/JSONObject;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 479
    const-string p1, "image"

    invoke-virtual {p5, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 480
    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    const/4 p5, 0x2

    if-eq p1, p5, :cond_2

    const/4 p1, 0x3

    .line 481
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    .line 483
    :cond_2
    :goto_0
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv:I

    .line 484
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zc:Ljava/lang/String;

    .line 485
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ABk:Ljava/lang/String;

    .line 486
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Gm:Z

    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 323
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hpZ:Z

    .line 324
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 325
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ(Ljava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->cJ()V

    .line 329
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->kYc:Lcom/bytedance/sdk/openadsdk/cJ/hm;

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 330
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi(Ljava/lang/String;)V

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    .line 334
    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p2

    iget p3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->FQ:I

    if-le p2, p3, :cond_2

    .line 336
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 338
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->FQ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 340
    const-string p2, "LandingPageLog"

    const-string p3, "copyBackForwardList exception"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    :cond_3
    :goto_0
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->js:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_4

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->js:J

    .line 346
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lB:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz p1, :cond_5

    .line 347
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->fl()V

    .line 349
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 350
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 352
    :try_start_1
    const-string p2, "render_type"

    const-string p4, "h5"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 353
    const-string p2, "render_type_2"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    if-ltz p2, :cond_6

    .line 355
    const-string p3, "preload_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :catch_1
    :cond_6
    const-string p2, "load_start"

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_7
    return-void
.end method

.method public Qhi(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 365
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 366
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi()V

    .line 368
    :cond_0
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lB:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    if-eqz v4, :cond_1

    .line 369
    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Tgh()V

    .line 371
    :cond_1
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->kYc:Lcom/bytedance/sdk/openadsdk/cJ/hm;

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 372
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->cJ(Ljava/lang/String;)V

    :cond_2
    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 374
    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pM:Z

    if-nez v5, :cond_3

    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->sDy:Z

    if-eqz v5, :cond_3

    .line 375
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pM:Z

    .line 376
    const-string v5, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log(\'LandingPageLogscroll status: (\' + scrollH + \'+\' + clientH + \')/\' + totalH + \'=\' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener(\'scroll\', function(e){\n    sendScroll();\n});"

    .line 390
    invoke-static {v1, v5}, Lcom/bytedance/sdk/component/utils/zc;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 393
    :cond_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ROR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 397
    :cond_4
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq v1, v6, :cond_5

    .line 399
    iput v7, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    .line 401
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->qMt:J

    .line 403
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    if-ne v1, v7, :cond_6

    goto :goto_0

    :cond_6
    move v4, v5

    .line 404
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv()I

    move-result v1

    .line 405
    const-string v6, "preload_h5_type"

    const-string v7, "url"

    const-string v8, "h5"

    const-string v9, "preload_status"

    const-string v10, "first_page"

    const-string v11, "error_url"

    const-string v12, "error_msg"

    const-string v13, "error_code"

    const-string v14, "render_type_2"

    const-string v15, "render_type"

    if-eqz v4, :cond_a

    move-object v4, v6

    .line 406
    iget-wide v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Dww:J

    iget-wide v2, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->bxS:J

    sub-long/2addr v5, v2

    .line 407
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 409
    :try_start_0
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv:I

    invoke-virtual {v2, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zc:Ljava/lang/String;

    invoke-virtual {v2, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 411
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ABk:Ljava/lang/String;

    invoke-virtual {v2, v11, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    iget v3, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    if-ltz v3, :cond_7

    .line 413
    invoke-virtual {v2, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 415
    :cond_7
    invoke-virtual {v2, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 416
    invoke-virtual {v2, v15, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    .line 417
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jN()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :catch_0
    const-string v3, "0"

    move/from16 v4, p3

    invoke-direct {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(ZLjava/lang/String;)V

    const-wide/32 v3, 0x927c0

    .line 424
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 425
    const-string v5, "load_finish"

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->jPH:J

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Tgh()V

    .line 429
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->dIT:Ljava/lang/String;

    iget-wide v7, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->jPH:J

    iget-wide v9, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ip:J

    sub-long/2addr v7, v9

    invoke-static {v2, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;J)V

    :cond_8
    move-object/from16 v2, p2

    .line 431
    invoke-direct {v0, v2, v5, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Ljava/lang/String;J)V

    .line 432
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Jma:Lcom/bytedance/sdk/openadsdk/cJ/Gm;

    if-eqz v2, :cond_9

    .line 433
    invoke-interface {v2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Gm;->Qhi(I)V

    :cond_9
    return-void

    :cond_a
    move v2, v3

    move-object v4, v6

    .line 436
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 438
    :try_start_1
    iget v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv:I

    invoke-virtual {v3, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 439
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zc:Ljava/lang/String;

    invoke-virtual {v3, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 440
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ABk:Ljava/lang/String;

    invoke-virtual {v3, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    invoke-virtual {v3, v10, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 442
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    if-ltz v1, :cond_b

    .line 443
    invoke-virtual {v3, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 445
    :cond_b
    invoke-virtual {v3, v15, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 446
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v14, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 447
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jN()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    :catch_1
    const-string v1, "2"

    invoke-direct {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(ZLjava/lang/String;)V

    .line 453
    const-string v1, "load_fail"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 454
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 456
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->dIT:Ljava/lang/String;

    iget-wide v6, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ip:J

    sub-long v6, v1, v6

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv:I

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zc:Ljava/lang/String;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ABk:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_c
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Gm:Z

    if-eqz v1, :cond_d

    .line 460
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 462
    const-string v1, "load_fail_main"

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_d
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    .locals 8

    .line 536
    const-string v0, "landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_endcard"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_split_screen"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_direct"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aggregate_page"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 538
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->oU()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 543
    :cond_1
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_4

    .line 547
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 550
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Lcom/bytedance/sdk/component/widget/SSWebView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 551
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v1, :cond_4

    .line 552
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    .line 553
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/widget/SSWebView;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CJ:J

    .line 552
    const-string v3, "landing_page_blank"

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/zn;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lB:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->HzH:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 1

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(Ljava/lang/String;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->kYc:Lcom/bytedance/sdk/openadsdk/cJ/hm;

    if-eqz v0, :cond_2

    .line 192
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->CJ(Ljava/lang/String;)V

    .line 194
    :cond_2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    return-void
.end method

.method public Qhi(Ljava/lang/String;Z)V
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 702
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->ac(Ljava/lang/String;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->kYc:Lcom/bytedance/sdk/openadsdk/cJ/hm;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 705
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->ac(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ROR()V
    .locals 4

    .line 491
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CQU:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CQU:J

    .line 494
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->qMt:J

    .line 495
    const-string v0, "landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landingpage_endcard"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landingpage_split_screen"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    .line 496
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "landingpage_direct"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "aggregate_page"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->YB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 498
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cjC:Ljava/lang/String;

    const-string v3, "landingStart"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-void

    .line 500
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cjC:Ljava/lang/String;

    const-string v3, "landingContinue"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public Sf()V
    .locals 6

    .line 507
    const-string v0, "landingpage"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_endcard"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_split_screen"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "landingpage_direct"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "aggregate_page"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 512
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 513
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->EBS:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ac()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 516
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 518
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->qMt:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->EBS:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 519
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 521
    :try_start_0
    const-string v3, "load_status"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    const-string v3, "max_scroll_percent"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->aP:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    const-string v3, "jump_times"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zn:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    const-string v3, "click_times"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->es:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 525
    const-string v3, "render_type"

    const-string v4, "h5"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v3, "render_type_2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :catch_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-wide/32 v3, 0x927c0

    .line 531
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-string v3, "stay_page"

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V

    .line 532
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cjC:Ljava/lang/String;

    const-string v3, "landingPause"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Tgh()V
    .locals 5

    .line 249
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->xyz:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->jPH:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MND:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 253
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->jPH:J

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->xyz:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->dIT:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->cJ(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ac(Z)V
    .locals 6

    .line 563
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 565
    :try_start_0
    const-string v1, "JS_LANDING_PAGE_LOG_OBJ"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 567
    const-string v1, "LandingPageLog"

    const-string v2, "removeJavascriptInterface exception"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->ROR:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    const-string v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(ZLjava/lang/String;)V

    .line 572
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->sDy:Z

    if-eqz p1, :cond_2

    .line 573
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->CQU:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->PAe:I

    .line 574
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->WAv()I

    move-result v5

    .line 573
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;JII)V

    goto :goto_1

    .line 576
    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    .line 577
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 579
    :try_start_1
    const-string v0, "load_status"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->fl:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 580
    const-string v0, "max_scroll_percent"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->aP:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 581
    const-string v0, "jump_times"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->zn:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 582
    const-string v0, "click_times"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->es:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 583
    const-string v0, "render_type"

    const-string v1, "h5"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 584
    const-string v0, "render_type_2"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 588
    :catch_1
    const-string v0, "stay_page"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 590
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->NFd:Landroid/webkit/WebView;

    .line 592
    const-string p1, "landingpage"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "landingpage_endcard"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "landingpage_split_screen"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    .line 593
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "landingpage_direct"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "aggregate_page"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->MQ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 594
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi()Lcom/bytedance/sdk/openadsdk/CJ/MQ;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->tP:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->cjC:Ljava/lang/String;

    const-string v2, "landingFinish"

    invoke-virtual {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/CJ/MQ;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public ac()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lG:Z

    return v0
.end method

.method public cJ()Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lB:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    return-object v0
.end method

.method public cJ(I)V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->pA:Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hpZ:Z

    if-eqz v1, :cond_0

    .line 711
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Qhi/ROR;->Qhi(I)V

    :cond_0
    return-void
.end method

.method public cJ(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->kYc:Lcom/bytedance/sdk/openadsdk/cJ/hm;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 604
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/hm;->Qhi(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 1

    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->dIT:Ljava/lang/String;

    return-void
.end method

.method public cJ(Z)V
    .locals 0

    .line 231
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->lG:Z

    return-void
.end method

.method public fl()V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->hm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/zc;->xyz:J

    .line 244
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/zc;->Tgh()V

    :cond_0
    return-void
.end method
