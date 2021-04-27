.class public final Lcom/facebook/share/model/ShareOpenGraphContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareOpenGraphContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent<",
        "Lcom/facebook/share/model/ShareOpenGraphContent;",
        "Lcom/facebook/share/model/ShareOpenGraphContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/share/model/ShareOpenGraphContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final action:Lcom/facebook/share/model/ShareOpenGraphAction;

.field private final previewPropertyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareOpenGraphContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 47
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->action:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 41
    invoke-static {p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->access$000(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;)Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->action:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 42
    invoke-static {p1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->access$100(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;Lcom/facebook/share/model/ShareOpenGraphContent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphContent;-><init>(Lcom/facebook/share/model/ShareOpenGraphContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "describeContents"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5
.end method

.method public getAction()Lcom/facebook/share/model/ShareOpenGraphAction;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->action:Lcom/facebook/share/model/ShareOpenGraphAction;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "getAction"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public getPreviewPropertyName()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "getPreviewPropertyName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "getPreviewPropertyName"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->action:Lcom/facebook/share/model/ShareOpenGraphAction;

    const/4 v5, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v5 .. v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeParcelable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeParcelable"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/facebook/share/model/ShareOpenGraphContent;->previewPropertyName:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object p2, v2, v1

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/Parcel;"

    const-string v1, "writeString"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Lcom/facebook/share/model/ShareOpenGraphContent;"

    const-string v1, "writeToParcel"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
