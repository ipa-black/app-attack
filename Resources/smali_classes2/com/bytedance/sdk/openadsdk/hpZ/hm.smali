.class public Lcom/bytedance/sdk/openadsdk/hpZ/hm;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;
    }
.end annotation


# instance fields
.field private ABk:Ljava/lang/Runnable;

.field public final CJ:Ljava/lang/String;

.field private CQU:Ljava/lang/String;

.field private DaO:I

.field private Dq:I

.field private Dww:Z

.field private EBS:Z

.field private EGK:I

.field private Eh:J

.field private Ewb:Z

.field private FQ:Ljava/lang/String;

.field private Gm:Ljava/lang/Runnable;

.field private Gy:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

.field private HLI:I

.field private HUk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private HWc:I

.field private Hf:I

.field private volatile Hy:Z

.field private HzH:Z

.field private IC:Ljava/lang/String;

.field private Jma:J

.field private KW:Z

.field private Ki:Z

.field private LcF:I

.field private LpL:Ljava/lang/String;

.field private Ls:Z

.field private MND:I

.field private MQ:Ljava/lang/String;

.field private NBs:Ljava/lang/String;

.field private NFd:J

.field private Ohm:Ljava/lang/String;

.field private Oy:I

.field private PAe:Ljava/lang/String;

.field private PER:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private Px:I

.field private Qe:I

.field public final Qhi:Ljava/lang/String;

.field private final ROR:Ljava/lang/String;

.field private ReL:Lorg/json/JSONObject;

.field private Ri:Landroid/content/Context;

.field private SL:Lcom/bytedance/sdk/openadsdk/hpZ/ac;

.field private SNp:I

.field private SO:Ljava/lang/String;

.field private final Sf:Landroid/os/Handler;

.field private TKG:Lorg/json/JSONObject;

.field private final Tgh:Ljava/lang/String;

.field private Ug:I

.field private Ura:Landroid/webkit/WebView;

.field private VV:I

.field private VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

.field private WAv:Ljava/lang/Runnable;

.field private Wrw:Ljava/lang/String;

.field private XH:Ljava/lang/String;

.field private YB:I

.field private YD:I

.field private aP:I

.field public final ac:Ljava/lang/String;

.field private bIO:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private bM:F

.field private bxS:Z

.field public final cJ:Ljava/lang/String;

.field private cJP:Ljava/lang/String;

.field private cfS:Z

.field private cjC:I

.field private dI:Z

.field private dIT:Z

.field private dVA:I

.field private eG:I

.field private eN:Ljava/lang/String;

.field private ejU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private es:J

.field private et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

.field public final fl:Ljava/lang/String;

.field private gT:Lorg/json/JSONObject;

.field private gga:I

.field private hm:Ljava/lang/Runnable;

.field private hpZ:Z

.field private iMK:Ljava/lang/Runnable;

.field private iWr:Z

.field private ip:Ljava/lang/String;

.field private jPH:I

.field private jWV:I

.field private js:J

.field private kYc:Z

.field private lB:J

.field private lG:J

.field private mZ:Ljava/lang/String;

.field private mz:Z

.field private ne:I

.field private oU:J

.field private ots:I

.field private pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

.field private pF:F

.field private pM:J

.field private pv:J

.field private qMt:Ljava/lang/String;

.field private rB:Lorg/json/JSONObject;

.field private rP:Ljava/lang/String;

.field private sDy:J

.field private sRC:Ljava/lang/String;

.field private sqa:Z

.field private tP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vml:Ljava/lang/String;

.field private wp:F

.field private xyz:Ljava/lang/String;

.field private volatile yBk:Z

.field private yN:J

.field private yy:Z

.field private zTC:I

.field private final zc:Landroid/os/Handler;

.field private zjb:I

.field private zn:J


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/hpZ/ac;Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;)V
    .locals 9

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "playable_stuck_check_ping"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Tgh:Ljava/lang/String;

    .line 51
    const-string v0, "playable_apply_media_permission_callback"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ROR:Ljava/lang/String;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zc:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hpZ:Z

    .line 73
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HzH:Z

    .line 74
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->kYc:Z

    .line 98
    const-string v1, "PL_sdk_playable_global_viewable"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi:Ljava/lang/String;

    .line 99
    const-string v1, "PL_sdk_page_screen_blank"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ:Ljava/lang/String;

    .line 100
    const-string v1, "PL_sdk_playable_destroy_analyze_summary"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac:Ljava/lang/String;

    .line 101
    const-string v1, "PL_sdk_playable_hardware_dialog_cancel"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CJ:Ljava/lang/String;

    .line 102
    const-string v1, "PL_sdk_playable_hardware_dialog_setting"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->fl:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "adInfo"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "appInfo"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    const-string v5, "subscribe_app_ad"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "download_app_ad"

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->tP:Ljava/util/Set;

    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MQ:Ljava/lang/String;

    .line 154
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->qMt:Ljava/lang/String;

    .line 156
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    .line 157
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bxS:Z

    .line 158
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Dww:Z

    .line 159
    const-string v2, ""

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CQU:Ljava/lang/String;

    const-wide/16 v5, 0xa

    .line 160
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pM:J

    .line 161
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Eh:J

    const/16 v3, 0x2bc

    .line 162
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->aP:I

    const-wide/16 v5, 0x0

    .line 163
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd:J

    .line 164
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sDy:J

    const-wide/16 v7, -0x1

    .line 165
    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    .line 166
    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG:J

    .line 167
    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J

    .line 168
    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->js:J

    .line 169
    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn:J

    .line 170
    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->es:J

    .line 171
    iput-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yN:J

    .line 172
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->FQ:Ljava/lang/String;

    .line 173
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PAe:Ljava/lang/String;

    .line 174
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ip:Ljava/lang/String;

    .line 175
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->xyz:Ljava/lang/String;

    .line 177
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jPH:I

    .line 178
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MND:I

    .line 179
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dIT:Z

    .line 180
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qe:I

    const/4 v3, -0x1

    .line 181
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->YB:I

    .line 182
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cjC:I

    .line 183
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Dq:I

    .line 184
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hf:I

    .line 185
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NBs:Ljava/lang/String;

    .line 186
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dI:Z

    .line 187
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dVA:I

    .line 188
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zjb:I

    .line 189
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ots:I

    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HLI:I

    .line 191
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->oU:J

    .line 192
    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pv:J

    const/4 v1, -0x2

    .line 196
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    .line 197
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    .line 211
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Oy:I

    .line 212
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->DaO:I

    .line 213
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rB:Lorg/json/JSONObject;

    .line 218
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HUk:Ljava/util/Map;

    .line 219
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->TKG:Lorg/json/JSONObject;

    .line 223
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJP:Ljava/lang/String;

    const/4 v1, 0x0

    .line 225
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bM:F

    .line 226
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pF:F

    .line 242
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->mz:Z

    .line 245
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sqa:Z

    .line 251
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->iWr:Z

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ejU:Ljava/util/List;

    .line 255
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cfS:Z

    .line 257
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 258
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 260
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$1;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bIO:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 277
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jWV:I

    .line 288
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    .line 289
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    .line 290
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ura:Landroid/webkit/WebView;

    .line 293
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/hpZ/WAv;->Qhi(Landroid/webkit/WebView;)V

    .line 296
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Landroid/view/View;)V

    .line 299
    invoke-direct {p0, p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/hpZ/ac;Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;)V

    return-void
.end method

.method static synthetic ABk(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)I
    .locals 2

    .line 35
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MND:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MND:I

    return v0
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    return-object p0
.end method

.method private CJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2320
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "rubeex://playable-minigamelite?id=%1s&schema=%2s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    return-object p1
.end method

.method private FQ()V
    .locals 4

    .line 2326
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->TKG:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2328
    const-string v1, "/cid_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2332
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->TKG:Lorg/json/JSONObject;

    const-string v2, "cid"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2334
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2335
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 2336
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    return-void

    .line 2341
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2342
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method static synthetic Gm(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->aP:I

    return p0
.end method

.method private Gm(Ljava/lang/String;)Z
    .locals 1

    .line 536
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/union-fe/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/union-fe-sg/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/union-fe-i18n/playable/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private PAe()V
    .locals 3

    .line 2551
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi(J)V

    .line 2552
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zc:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 2553
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ABk:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 2554
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2555
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->iMK:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 2556
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2558
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi(I)V

    :cond_3
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->oU:J

    return-wide p1
.end method

.method public static Qhi(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/hpZ/ac;Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 7

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 2922
    :cond_0
    new-instance v6, Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    sget-object v5, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/hpZ/ac;Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;)V

    return-object v6

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PER:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/hpZ/ac;Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;)V
    .locals 1

    .line 421
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MQ:Ljava/lang/String;

    .line 422
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    .line 423
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    .line 424
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->SL:Lcom/bytedance/sdk/openadsdk/hpZ/ac;

    .line 425
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/hpZ/Gm;->Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;)V

    .line 426
    new-instance p1, Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/ROR;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gy:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    .line 428
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yN()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/hpZ/hm;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    return p1
.end method

.method static synthetic ROR(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Lcom/bytedance/sdk/openadsdk/hpZ/cJ;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    return-object p0
.end method

.method static synthetic Sf(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zc:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic Tgh(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Landroid/webkit/WebView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ura:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic WAv(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->oU:J

    return-wide v0
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    return-object p0
.end method

.method private ac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 2301
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->IC:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJP:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2302
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJP:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2303
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p2

    .line 2306
    const-string v0, "lynxview"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "playable_hash"

    const-string v3, "surl"

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2310
    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_1

    .line 2307
    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2308
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2310
    :goto_1
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 2311
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2312
    invoke-virtual {p1, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2314
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->IC:Ljava/lang/String;

    .line 2316
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->IC:Ljava/lang/String;

    return-object p1
.end method

.method private ac(ILjava/lang/String;)V
    .locals 1

    .line 2244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz v0, :cond_0

    .line 2245
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/hpZ/hm;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pv:J

    return-wide p1
.end method

.method private cJ(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 568
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Oy:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->DaO:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    .line 571
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Oy:I

    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->DaO:I

    .line 573
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 574
    const-string v0, "width"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Oy:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 575
    const-string v0, "height"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->DaO:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 576
    const-string v0, "resize"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 577
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rB:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 579
    const-string v0, "PlayablePlugin"

    const-string v1, "resetViewDataJsonByView error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    return p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/hpZ/hm;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    return p1
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Ljava/lang/Runnable;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    return-object p0
.end method

.method private fl(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 2350
    :try_start_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "playable_url"

    if-nez p1, :cond_1

    .line 2351
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2353
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->FQ()V

    .line 2355
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 2359
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->eN:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sRC:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2357
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rP:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->LpL:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2361
    :cond_5
    :goto_1
    const-string p1, "playable_render_type"

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2362
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz p1, :cond_8

    .line 2363
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 2365
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi(Lorg/json/JSONObject;)V

    return-void

    .line 2366
    :cond_7
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-eqz p1, :cond_8

    .line 2368
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_8
    return-void
.end method

.method static synthetic hm(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pv:J

    return-wide v0
.end method

.method private yN()V
    .locals 2

    .line 432
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->aP:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    .line 434
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$3;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    .line 445
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$4;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    .line 458
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ABk:Ljava/lang/Runnable;

    .line 479
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$6;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->iMK:Ljava/lang/Runnable;

    .line 490
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$7;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zc(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)I
    .locals 2

    .line 35
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jPH:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jPH:I

    return v0
.end method


# virtual methods
.method public ABk()Lorg/json/JSONObject;
    .locals 3

    .line 927
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 928
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 929
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 932
    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 934
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->XH:Ljava/lang/String;

    return-object p0
.end method

.method public CJ(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 2898
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cfS:Z

    return-object p0
.end method

.method public CJ()Ljava/lang/String;
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->SO:Ljava/lang/String;

    return-object v0
.end method

.method public CJ(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    .line 2880
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2883
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2884
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2888
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gy:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/ROR;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2891
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public CJ(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1675
    const-string v0, "section"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NBs:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public CQU()V
    .locals 1

    .line 1697
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz v0, :cond_0

    .line 1698
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    :cond_0
    return-void
.end method

.method public Dww()V
    .locals 1

    const/4 v0, 0x1

    .line 1692
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dI:Z

    return-void
.end method

.method public EBS()V
    .locals 9

    .line 1654
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1655
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_interactable_duration"

    if-lez v1, :cond_0

    .line 1656
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn:J

    sub-long/2addr v5, v7

    .line 1657
    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 1659
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1661
    :goto_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_interactable_load_duration"

    if-lez v1, :cond_1

    .line 1662
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yN:J

    .line 1663
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 1665
    :cond_1
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1667
    :goto_1
    const-string v1, "PL_sdk_material_interactable"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public Eh()V
    .locals 9

    .line 1786
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1787
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_first_frame_show_duration"

    if-lez v1, :cond_0

    .line 1788
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn:J

    sub-long/2addr v5, v7

    .line 1789
    invoke-virtual {v0, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 1791
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1793
    :goto_0
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    cmp-long v1, v1, v3

    const-string v2, "playable_material_first_frame_load_duration"

    if-lez v1, :cond_1

    .line 1794
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J

    sub-long/2addr v3, v5

    .line 1795
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_1

    .line 1797
    :cond_1
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1799
    :goto_1
    const-string v1, "PL_sdk_material_first_frame_show"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void
.end method

.method public Gm()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 892
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gy:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/ROR;->Qhi()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public HzH()Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;
    .locals 1

    .line 1300
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    return-object v0
.end method

.method public Jma()V
    .locals 2

    const/4 v0, 0x0

    .line 2647
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Oy:I

    .line 2648
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->DaO:I

    const/4 v1, 0x0

    .line 2649
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->wp:F

    .line 2650
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VV:I

    .line 2651
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Px:I

    .line 2652
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HWc:I

    .line 2653
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->SNp:I

    .line 2654
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->YD:I

    .line 2655
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->eG:I

    .line 2656
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ug:I

    .line 2657
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ne:I

    .line 2658
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zTC:I

    .line 2659
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->LcF:I

    return-void
.end method

.method public MQ()Lorg/json/JSONObject;
    .locals 8

    .line 1599
    const-string v0, "y"

    const-string v1, "x"

    const-string v2, "height"

    const-string v3, "width"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1601
    :try_start_0
    const-string v5, "devicePixelRatio"

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->wp:F

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1602
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1603
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VV:I

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1604
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Px:I

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1605
    const-string v6, "screen"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1607
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1608
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->SNp:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1609
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HWc:I

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1610
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->YD:I

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1611
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->eG:I

    invoke-virtual {v5, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1612
    const-string v6, "webview"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1614
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1615
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ne:I

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1616
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ug:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1617
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zTC:I

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1618
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->LcF:I

    invoke-virtual {v5, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1619
    const-string v0, "visible"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1622
    const-string v1, "PlayablePlugin"

    const-string v2, "getViewport error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v4
.end method

.method public NFd()V
    .locals 8

    .line 2086
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_4

    .line 2087
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_1

    .line 2088
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pM:J

    mul-long/2addr v6, v3

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2090
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-eq v0, v2, :cond_3

    if-ne v0, v1, :cond_4

    .line 2091
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Eh:J

    mul-long/2addr v5, v3

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public Qhi()Landroid/content/Context;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    return-object v0
.end method

.method public Qhi(J)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 676
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pM:J

    goto :goto_0

    .line 678
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pM:J

    :goto_0
    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->mZ:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HUk:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 2

    .line 649
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ki:Z

    .line 651
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 652
    const-string v0, "endcard_mute"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ki:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 653
    const-string v0, "volumeChange"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 655
    const-string v0, "PlayablePlugin"

    const-string v1, "setIsMute error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public Qhi(I)V
    .locals 0

    .line 703
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jWV:I

    return-void
.end method

.method protected Qhi(ILjava/lang/String;)V
    .locals 2

    .line 2250
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG()V

    .line 2251
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(ILjava/lang/String;)V

    .line 2253
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2255
    :try_start_0
    const-string v1, "playable_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2256
    const-string p1, "playable_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2258
    const-string p2, "PlayablePlugin"

    const-string v1, "reportRenderFatal error"

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2260
    :goto_0
    const-string p1, "PL_sdk_global_faild"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public Qhi(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    .line 2744
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    .line 2745
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->vml:Ljava/lang/String;

    .line 2746
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2748
    :try_start_0
    const-string v1, "playable_code"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2749
    const-string p1, "playable_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2750
    const-string p1, "playable_fail_url"

    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2751
    const-string p1, "playable_has_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2753
    const-string p2, "PlayablePlugin"

    const-string p3, "onWebReceivedError error"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2755
    :goto_0
    const-string p1, "PL_sdk_html_load_error"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2756
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2757
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    .line 2758
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 2759
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 2760
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2761
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 2762
    const-string p2, "ContainerLoadFail"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Qhi(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 555
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PER:Ljava/lang/ref/WeakReference;

    .line 556
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Landroid/view/View;)V

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bIO:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 559
    const-string v0, "PlayablePlugin"

    const-string v1, "setViewForScreenSize error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 1266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1267
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->SL:Lcom/bytedance/sdk/openadsdk/hpZ/ac;

    if-eqz v0, :cond_1

    .line 1271
    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/ac;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;)V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz v0, :cond_1

    .line 967
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->cJ(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 969
    const-string v0, "resource_base64"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 973
    :cond_0
    const-string v1, "resource_type"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 974
    const-string v2, "resource_name"

    const-string v3, "playable_media"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 976
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public Qhi(ZLjava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 2820
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    .line 2821
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->vml:Ljava/lang/String;

    .line 2822
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2824
    :try_start_0
    const-string v0, "playable_code"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2825
    const-string p3, "playable_msg"

    const-string v0, "url load error"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2826
    const-string p3, "playable_fail_url"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2827
    const-string p2, "playable_has_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 2829
    const-string p3, "PlayablePlugin"

    const-string v0, "onWebReceivedHttpError error"

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2831
    :goto_0
    const-string p2, "PL_sdk_html_load_error"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2832
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2833
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    .line 2834
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 2835
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 2836
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2837
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    .line 2838
    const-string p2, "ContainerLoadFail"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ROR()Ljava/lang/String;
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ohm:Ljava/lang/String;

    return-object v0
.end method

.method public ROR(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    .line 1851
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    .line 1853
    :cond_0
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1854
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1865
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->iMK()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 1862
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ABk()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 1859
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zc()Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public ROR(Ljava/lang/String;)V
    .locals 8

    .line 1983
    const-string p1, "PlayablePlugin"

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    .line 1984
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1986
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J

    .line 1989
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    sub-long/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    .line 1992
    :goto_0
    const-string v4, "playable_page_show_duration"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 1994
    const-string v3, "reportUrlLoadStart error"

    invoke-static {p1, v3, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1996
    :goto_1
    const-string v2, "PL_sdk_html_load_start"

    invoke-virtual {p0, v2, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1997
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 1998
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 1999
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cfS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2000
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd()V

    .line 2001
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 2002
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 2006
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HzH:Z

    if-eqz v0, :cond_b

    .line 2008
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2009
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2010
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2011
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    sget v5, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->zc:I

    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "1"

    const-string v6, "0"

    if-eqz v4, :cond_3

    .line 2012
    :try_start_2
    const-string v4, "Microphone_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2013
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2014
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->cJ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2015
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2017
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 2020
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2021
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2023
    :goto_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Gm:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2024
    const-string v4, "Magetometer_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2025
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2026
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 2028
    :cond_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2029
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2031
    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->WAv:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2032
    const-string v4, "Accelerometer_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2033
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2034
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 2036
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2037
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2039
    :goto_4
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->hm:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2040
    const-string v4, "Gyro_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2041
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2042
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 2044
    :cond_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2045
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2047
    :goto_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Sf:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2048
    const-string v4, "Camera_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2049
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2050
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v7, "android.permission.CAMERA"

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->cJ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2051
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 2053
    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 2056
    :cond_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2057
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2059
    :goto_6
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    sget v7, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->ROR:I

    invoke-static {v4, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2060
    const-string v4, "Photo"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2061
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2062
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2063
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 2065
    :cond_9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 2068
    :cond_a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2069
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2072
    :goto_7
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2073
    const-string v5, "playable_available_hardware_name"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2074
    const-string v0, "playable_available_hardware_code"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2075
    const-string v0, "playable_available_hardware_auth_code"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2076
    const-string v0, "PL_sdk_hardware_detect"

    invoke-virtual {p0, v0, v4}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2077
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HzH:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 2079
    const-string v1, "Hardware detect error"

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    return-void
.end method

.method public Sf(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    if-nez p1, :cond_0

    .line 1874
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1

    .line 1876
    :cond_0
    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 1877
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    .line 1879
    const-string v2, "result"

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 1898
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 1891
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->cJ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 1884
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->cJ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object v0
.end method

.method public Sf(Ljava/lang/String;)V
    .locals 9

    .line 2101
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x2

    .line 2102
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    .line 2103
    const-string v1, "PlayablePlugin"

    if-nez v0, :cond_2

    .line 2104
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->vml:Ljava/lang/String;

    .line 2105
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2107
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->js:J

    .line 2110
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    sub-long/2addr v3, v5

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    .line 2113
    :goto_1
    const-string v0, "playable_html_load_start_duration"

    invoke-virtual {p1, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2114
    const-string v0, "playable_has_show"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zn()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 2116
    const-string v3, "reportUrlLoadFinish error"

    invoke-static {v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2118
    :goto_2
    const-string v0, "PL_sdk_html_load_finish"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2120
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 2121
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2124
    :try_start_1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-nez p1, :cond_4

    .line 2125
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hpZ:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ura:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    .line 2126
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hpZ:Z

    .line 2127
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->es()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/hpZ/hm$9;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$9;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2134
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 2137
    const-string v0, "crashMonitor error"

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sf()Z
    .locals 1

    .line 661
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ki:Z

    return v0
.end method

.method public Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 8

    .line 1331
    const-string v0, "lynxview"

    const-string v1, "webview"

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJP:Ljava/lang/String;

    .line 1334
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1335
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 1336
    const-string v4, "http"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "?"

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v4, :cond_6

    :try_start_1
    const-string v4, "https"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 1345
    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1346
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1360
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1361
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-ne v0, v6, :cond_3

    const/4 v0, 0x2

    .line 1362
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(I)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 1364
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(I)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    goto :goto_2

    .line 1347
    :cond_4
    :goto_0
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(I)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    .line 1348
    const-string v0, "url"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1350
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1352
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    .line 1354
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    move-object p1, v0

    goto :goto_2

    .line 1337
    :cond_6
    :goto_1
    invoke-virtual {p0, v7}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(I)Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    if-eqz p1, :cond_7

    .line 1339
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_7

    .line 1341
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1372
    :catchall_0
    :cond_7
    :goto_2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    return-object p0
.end method

.method public Tgh()Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->XH:Ljava/lang/String;

    return-object v0
.end method

.method public Tgh(Lorg/json/JSONObject;)V
    .locals 2

    .line 1806
    const-string v0, "The material directly invokes the exception pocket mask on the client"

    if-eqz p1, :cond_0

    .line 1807
    const-string v1, "error_msg"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 p1, 0x2

    .line 1809
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(ILjava/lang/String;)V

    return-void
.end method

.method public WAv()Lorg/json/JSONObject;
    .locals 3

    .line 882
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 883
    const-string v1, "send_click"

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ls:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 886
    const-string v1, "PlayablePlugin"

    const-string v2, "getPlayableClickStatus error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public WAv(Ljava/lang/String;)V
    .locals 1

    .line 2504
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$2;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public aP()V
    .locals 3

    .line 1840
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pv:J

    .line 1841
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1842
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    if-eqz v0, :cond_1

    .line 1843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi(J)V

    :cond_1
    return-void
.end method

.method public ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 2

    .line 613
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 614
    const-string v1, "playable_style"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 615
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gT:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 617
    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableStyle error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public ac(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 1321
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->TKG:Lorg/json/JSONObject;

    return-object p0
.end method

.method public ac(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 2

    .line 869
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ls:Z

    .line 871
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 872
    const-string v0, "send_click"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ls:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 873
    const-string v0, "change_playable_click"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 875
    const-string v0, "PlayablePlugin"

    const-string v1, "setPlayableClick error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public ac()Lorg/json/JSONObject;
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gT:Lorg/json/JSONObject;

    return-object v0
.end method

.method public ac(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 7

    .line 2381
    const-string v0, "log_extra"

    const-string v1, "ad_extra_data"

    const-string v2, "playable_render_type"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 2385
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 2388
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dIT:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 2389
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MND:I

    if-lez v3, :cond_2

    .line 2390
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dIT:Z

    .line 2393
    :cond_2
    const-string v3, "PL_sdk_html_load_start"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "PL_sdk_html_load_finish"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "PL_sdk_html_load_error"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2394
    :cond_3
    const-string v3, "usecache"

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ewb:Z

    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2397
    :cond_4
    const-string v3, "playable_event"

    invoke-virtual {p2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2398
    const-string p1, "playable_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2, p1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2399
    const-string p1, "playable_viewable"

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2400
    const-string p1, "playable_session_id"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MQ:Ljava/lang/String;

    invoke-virtual {p2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2401
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    const-string v5, "playable_url"

    if-nez p1, :cond_6

    .line 2402
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    sget-object v4, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    if-eq p1, v4, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 2404
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->FQ()V

    .line 2406
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    if-eq p1, v6, :cond_9

    if-ne p1, v3, :cond_7

    goto :goto_0

    :cond_7
    if-eq p1, v4, :cond_8

    const/4 v4, 0x2

    if-ne p1, v4, :cond_a

    .line 2410
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->eN:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sRC:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 2408
    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rP:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->LpL:Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2412
    :cond_a
    :goto_1
    const-string p1, "playable_full_url"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJP:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2413
    const-string p1, "playable_replay_count"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qe:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2414
    const-string p1, "playable_is_prerender"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->KW:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2415
    const-string p1, "playable_is_preload"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dIT:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2416
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2417
    const-string p1, "playable_scenes_type"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->ordinal()I

    move-result v4

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2418
    const-string p1, "playable_gecko_key"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->eN:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, ""

    if-eqz v4, :cond_b

    move-object v4, v6

    goto :goto_2

    :cond_b
    :try_start_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->eN:Ljava/lang/String;

    :goto_2
    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2419
    const-string p1, "playable_gecko_channel"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sRC:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sRC:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2420
    const-string p1, "playable_sdk_version"

    const-string v4, "6.6.0"

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2421
    const-string p1, "playable_minigamelite_id"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rP:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2422
    const-string p1, "playable_minigamelite_schema"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->LpL:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2423
    const-string p1, "playable_is_debug"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sqa:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2424
    const-string p1, "playable_retry_count"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cjC:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2425
    const-string p1, "playable_enter_from"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Dq:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2426
    const-string p1, "playable_sequence"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hf:I

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2427
    const-string p1, "playable_current_section"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NBs:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2428
    const-string p1, "is_playable_finish"

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->dI:Z

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2429
    const-string p1, "playable_card_session"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->FQ:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2430
    const-string p1, "playable_video_session"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PAe:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2431
    const-string p1, "playable_network_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hpZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2432
    const-string p1, "playable_lynx_version"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->CQU:Ljava/lang/String;

    invoke-virtual {p2, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2434
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 2435
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2436
    const-string v4, "tag"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->qMt:Ljava/lang/String;

    invoke-virtual {p1, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2437
    const-string v4, "nt"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2438
    const-string v3, "category"

    const-string v4, "umeng"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2439
    const-string v3, "is_ad_event"

    const-string v4, "1"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2440
    const-string v3, "refer"

    const-string v4, "playable"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2441
    const-string v3, "value"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->TKG:Lorg/json/JSONObject;

    const-string v6, "cid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2442
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->TKG:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2444
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_14

    const/4 v3, -0x2

    if-ne v0, v3, :cond_d

    goto :goto_5

    .line 2452
    :cond_d
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz p1, :cond_13

    .line 2454
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ejU:Ljava/util/List;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 2455
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ejU:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 2456
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2458
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2459
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2461
    :cond_e
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi(Lorg/json/JSONObject;)V

    goto :goto_4

    .line 2463
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ejU:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2471
    :cond_10
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2475
    :cond_11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi(Lorg/json/JSONObject;)V

    return-void

    .line 2476
    :cond_12
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-eqz p1, :cond_13

    .line 2480
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi(Lorg/json/JSONObject;)V

    :cond_13
    return-void

    .line 2445
    :cond_14
    :goto_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ejU:Ljava/util/List;

    if-nez p2, :cond_15

    .line 2446
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ejU:Ljava/util/List;

    .line 2448
    :cond_15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ejU:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 2488
    const-string p2, "PlayablePlugin"

    const-string v0, "reportEvent error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bxS()V
    .locals 1

    const/4 v0, 0x2

    .line 1687
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->YB:I

    return-void
.end method

.method public cJ(I)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 1377
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    return-object p0
.end method

.method public cJ(J)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/16 p1, 0xa

    .line 685
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Eh:J

    goto :goto_0

    .line 687
    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Eh:J

    :goto_0
    return-object p0
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->SO:Ljava/lang/String;

    return-object p0
.end method

.method public cJ(Z)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 6

    .line 786
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jWV:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    .line 790
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-ne v0, p1, :cond_1

    return-object p0

    .line 793
    :cond_1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    .line 795
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 797
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-nez v0, :cond_2

    .line 798
    const-string v0, "playable_background_show_type"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zjb:I

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :catch_0
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-eqz v0, :cond_3

    const-string v0, "PL_sdk_viewable_true"

    goto :goto_0

    :cond_3
    const-string v0, "PL_sdk_viewable_false"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 809
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    const/4 v0, 0x1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-eqz p1, :cond_6

    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG:J

    .line 811
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 813
    :try_start_1
    const-string v2, "render_type"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jWV:I

    if-ne v3, v0, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 814
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jWV:I

    if-eq v2, v1, :cond_5

    .line 815
    const-string v1, "webview_state"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 819
    :catch_1
    :cond_5
    const-string v1, "PL_sdk_page_show"

    invoke-virtual {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 828
    :cond_6
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG:J

    cmp-long p1, v1, v4

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->mz:Z

    if-nez p1, :cond_7

    .line 829
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->mz:Z

    .line 838
    :cond_7
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-eqz p1, :cond_8

    .line 839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    goto :goto_2

    .line 841
    :cond_8
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    cmp-long p1, v0, v4

    if-eqz p1, :cond_9

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    sub-long/2addr v0, v2

    .line 844
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd:J

    .line 845
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    .line 850
    :cond_9
    :goto_2
    :try_start_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 851
    const-string v0, "viewStatus"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 852
    const-string v0, "viewableChange"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 854
    const-string v0, "PlayablePlugin"

    const-string v1, "setViewable error"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    :goto_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-eqz p1, :cond_a

    .line 857
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB()V

    goto :goto_4

    .line 859
    :cond_a
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG()V

    :goto_4
    return-object p0
.end method

.method public cJ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HUk:Ljava/util/Map;

    return-object v0
.end method

.method public cJ(ILjava/lang/String;)V
    .locals 5

    .line 2266
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->YB:I

    .line 2267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 2268
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    .line 2271
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    const-string v1, "playable_stuck_type"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    const-string v1, "playable_stuck_reason"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2273
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->es:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    const-string v0, "playable_stuck_duration"

    if-lez p2, :cond_1

    .line 2274
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->es:J

    sub-long/2addr v1, v3

    .line 2275
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 2277
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2282
    :catchall_0
    :goto_0
    const-string p2, "PL_sdk_page_stuck"

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    invoke-virtual {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2283
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG()V

    .line 2285
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 2287
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public cJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1279
    :cond_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1281
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p2, p1, v1}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected cJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 2294
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2297
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->fl(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public cJ(Lorg/json/JSONObject;)V
    .locals 2

    .line 985
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz v0, :cond_0

    .line 987
    :try_start_0
    const-string v0, "isPrevent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public es()Ljava/lang/String;
    .locals 1

    .line 2855
    const-string v0, "function playable_callJS(){return \"Android call the JS method is callJS\";}"

    return-object v0
.end method

.method public fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/hpZ/hm;
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ohm:Ljava/lang/String;

    return-object p0
.end method

.method public fl()Ljava/lang/String;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->mZ:Ljava/lang/String;

    return-object v0
.end method

.method public fl(Lorg/json/JSONObject;)V
    .locals 3

    .line 1731
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ReL:Lorg/json/JSONObject;

    .line 1732
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hf:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hf:I

    .line 1737
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG()V

    .line 1738
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1740
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bxS:Z

    if-nez p1, :cond_0

    return-void

    .line 1744
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->es:J

    .line 1745
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->oU:J

    const-wide/16 v1, 0x0

    .line 1746
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pv:J

    .line 1747
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EGK:I

    if-nez p1, :cond_1

    .line 1748
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ura:Landroid/webkit/WebView;

    if-eqz p1, :cond_3

    .line 1749
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$8;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    const-string v1, "javascript:typeof playable_callJS === \'function\' && playable_callJS()"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1757
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "playable_stuck_check_ping"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1759
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gm:Ljava/lang/Runnable;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->aP:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public fl(Z)V
    .locals 0

    .line 2903
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ewb:Z

    return-void
.end method

.method public hm(Ljava/lang/String;)V
    .locals 1

    .line 2494
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$10;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hm(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 2220
    const-string v0, "success"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 2222
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    .line 2223
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 2225
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    :goto_0
    if-nez p1, :cond_1

    .line 2230
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2232
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->EBS:Z

    .line 2233
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 2234
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 2235
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2236
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x4

    .line 2237
    const-string v0, "CaseRenderFail"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Qhi(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public hm()Z
    .locals 1

    .line 865
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    return v0
.end method

.method public hpZ()Ljava/lang/String;
    .locals 1

    .line 1291
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ip:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz v0, :cond_0

    .line 1293
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/hpZ/fl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/fl;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ip:Ljava/lang/String;

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public iMK()Lorg/json/JSONObject;
    .locals 5

    .line 942
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 943
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    move v1, v2

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 946
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 948
    :goto_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 949
    const-string v4, "isHasRead"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 950
    const-string v4, "isHasWrite"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 951
    const-string v4, "result"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :catchall_0
    move-exception v0

    .line 954
    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 956
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public js()V
    .locals 11

    .line 2666
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->iWr:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2669
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->iWr:Z

    const-wide/16 v1, 0x0

    .line 2670
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->sDy:J

    .line 2671
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->HzH:Z

    .line 2672
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma()V

    .line 2675
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PER:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2678
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bIO:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2687
    :catchall_0
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Gy:Lcom/bytedance/sdk/openadsdk/hpZ/ROR;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/ROR;->cJ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    const/4 v0, 0x0

    .line 2691
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    if-eqz v1, :cond_2

    .line 2692
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi()V

    .line 2693
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    .line 2695
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zc:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 2696
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    .line 2699
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crash -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 2704
    :try_start_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2705
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2706
    const-string v3, "playable_all_times"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jPH:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2707
    const-string v3, "playable_hit_times"

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MND:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2708
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->jPH:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v4, "playable_hit_ratio"

    if-lez v3, :cond_4

    .line 2709
    :try_start_4
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->MND:I

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    div-double/2addr v5, v7

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    .line 2711
    :cond_4
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2713
    :goto_1
    const-string v3, "PL_sdk_preload_times"

    invoke-virtual {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2720
    :catchall_3
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Wrw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2722
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    .line 2723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    sub-long/2addr v2, v6

    .line 2725
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd:J

    .line 2726
    iput-wide v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lB:J

    .line 2728
    :cond_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2729
    const-string v3, "playable_user_play_duration"

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->NFd:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2730
    const-string v3, "PL_sdk_user_play_duration"

    invoke-virtual {p0, v3, v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2735
    :catchall_4
    :cond_7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Hy:Z

    .line 2736
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 2737
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hm:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2738
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2739
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public kYc()Lorg/json/JSONObject;
    .locals 2

    .line 1304
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rB:Lorg/json/JSONObject;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1305
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PER:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rB:Lorg/json/JSONObject;

    return-object v0

    .line 1311
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cJ(Landroid/view/View;)V

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->rB:Lorg/json/JSONObject;

    return-object v0
.end method

.method public lB()V
    .locals 2

    .line 2514
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bxS:Z

    if-nez v0, :cond_0

    return-void

    .line 2518
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->es:J

    .line 2520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    if-ne v0, v1, :cond_2

    .line 2522
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 2524
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2525
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PAe()V

    return-void

    .line 2527
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    if-nez v0, :cond_4

    .line 2528
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->aP:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    .line 2529
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PAe()V

    return-void

    .line 2535
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->gga:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 2537
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->cJ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2538
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PAe()V

    return-void

    .line 2540
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    if-nez v0, :cond_4

    .line 2541
    new-instance v0, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->aP:I

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;-><init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    .line 2542
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PAe()V

    :cond_4
    return-void
.end method

.method public lG()V
    .locals 3

    .line 2565
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pA:Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    if-eqz v0, :cond_0

    .line 2566
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi()V

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->zc:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2569
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 2572
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The stuttering detection has been paused due to a crash.-- "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public pA()Lorg/json/JSONObject;
    .locals 4

    .line 998
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 999
    const-string v1, "scene_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->VnT:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1000
    const-string v1, "safe_area_top_height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->bM:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1001
    const-string v1, "safe_area_bottom_height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->pF:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1002
    const-string v1, "playable_enter_from"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Dq:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1003
    const-string v1, "playable_retry_count"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->cjC:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1004
    const-string v1, "playable_card_session"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->FQ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1005
    const-string v1, "playable_video_session"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->PAe:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1006
    const-string v1, "playable_network_type"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->hpZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    const-string v1, "aweme_id"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->xyz:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1010
    const-string v1, "PlayablePlugin"

    const-string v2, "playableInfo error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1012
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public pM()V
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz v0, :cond_0

    .line 1711
    sget-object v0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;->CJ:Lcom/bytedance/sdk/openadsdk/hpZ/hm$Qhi;

    :cond_0
    return-void
.end method

.method public qMt()V
    .locals 1

    .line 1643
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->et:Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;

    if-eqz v0, :cond_0

    .line 1644
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Qhi;->cJ()V

    :cond_0
    return-void
.end method

.method public sDy()V
    .locals 7

    const/4 v0, 0x0

    .line 2198
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yBk:Z

    .line 2199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Sf:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->WAv:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2201
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2202
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "playable_jssdk_load_success_duration"

    if-lez v1, :cond_0

    .line 2203
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Jma:J

    sub-long/2addr v3, v5

    .line 2204
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 2206
    :cond_0
    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2208
    :goto_0
    const-string v1, "PL_sdk_jssdk_load_success"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ac(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method public tP()Lorg/json/JSONObject;
    .locals 1

    .line 1317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->TKG:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zc()Lorg/json/JSONObject;
    .locals 3

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->Ri:Landroid/content/Context;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/Tgh;->Qhi(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 915
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 916
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    .line 919
    const-string v1, "PlayablePlugin"

    const-string v2, "getCameraPermission error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/hpZ/Sf;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 921
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public zn()I
    .locals 4

    .line 2815
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->lG:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->yy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
