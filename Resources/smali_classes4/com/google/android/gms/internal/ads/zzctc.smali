.class final Lcom/google/android/gms/internal/ads/zzctc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfgr;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcre;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzctc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzhfc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzhfc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcre;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzq;Lcom/google/android/gms/internal/ads/zzctb;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzb:Lcom/google/android/gms/internal/ads/zzctc;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zza:Lcom/google/android/gms/internal/ads/zzcre;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzc:Lcom/google/android/gms/internal/ads/zzhfc;

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzd:Lcom/google/android/gms/internal/ads/zzhfc;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzheq;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhep;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctc;->zze:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzaq(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesc;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/ads/zzesc;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzf:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzY(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfhp;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzg:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzM(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzI(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfji;->zza()Lcom/google/android/gms/internal/ads/zzfji;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfgp;

    move-object v0, v8

    move-object v1, p2

    move-object v4, p5

    move-object v5, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfgp;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzh:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcre;->zzaC(Lcom/google/android/gms/internal/ads/zzcre;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzesk;

    move-object v0, v8

    move-object v2, p4

    move-object v3, p3

    move-object v5, p5

    move-object v6, v7

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzesk;-><init>(Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;Lcom/google/android/gms/internal/ads/zzhfc;)V

    .line 7
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzheo;->zzc(Lcom/google/android/gms/internal/ads/zzhfc;)Lcom/google/android/gms/internal/ads/zzhfc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzesj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctc;->zzi:Lcom/google/android/gms/internal/ads/zzhfc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhfc;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzesj;

    return-object v0
.end method
