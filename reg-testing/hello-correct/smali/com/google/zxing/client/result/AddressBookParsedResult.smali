.class public final Lcom/google/zxing/client/result/AddressBookParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "AddressBookParsedResult.java"


# instance fields
.field private final addressTypes:[Ljava/lang/String;

.field private final addresses:[Ljava/lang/String;

.field private final birthday:Ljava/lang/String;

.field private final emailTypes:[Ljava/lang/String;

.field private final emails:[Ljava/lang/String;

.field private final geo:[Ljava/lang/String;

.field private final instantMessenger:Ljava/lang/String;

.field private final names:[Ljava/lang/String;

.field private final nicknames:[Ljava/lang/String;

.field private final note:Ljava/lang/String;

.field private final org:Ljava/lang/String;

.field private final phoneNumbers:[Ljava/lang/String;

.field private final phoneTypes:[Ljava/lang/String;

.field private final pronunciation:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 85
    sget-object v7, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v7}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 86
    array-length v7, v1

    array-length v8, v2

    if-ne v7, v8, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Phone numbers and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    .line 89
    array-length v7, v3

    array-length v8, v4

    if-ne v7, v8, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Emails and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 92
    array-length v7, v5

    array-length v8, v6

    if-ne v7, v8, :cond_4

    goto :goto_2

    .line 93
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Addresses and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_2
    move-object v7, p1

    .line 95
    iput-object v7, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    move-object v7, p2

    .line 96
    iput-object v7, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    move-object v7, p3

    .line 97
    iput-object v7, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    .line 98
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    .line 99
    iput-object v2, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    .line 100
    iput-object v3, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    .line 101
    iput-object v4, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    move-object/from16 v1, p8

    .line 102
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    move-object/from16 v1, p9

    .line 103
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    .line 104
    iput-object v5, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    .line 105
    iput-object v6, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    move-object/from16 v1, p12

    .line 106
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 107
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 108
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 109
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    move-object/from16 v1, p16

    .line 110
    iput-object v1, v0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 51
    invoke-direct/range {v0 .. v16}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAddressTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addressTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getAddresses()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    return-object v0
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 204
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 205
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 206
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 207
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 208
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 209
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->addresses:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 210
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 211
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 212
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 213
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 214
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->birthday:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 215
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 216
    iget-object v1, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/zxing/client/result/AddressBookParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 217
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emailTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getGeo()[Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->geo:[Ljava/lang/String;

    return-object v0
.end method

.method public getInstantMessenger()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->instantMessenger:Ljava/lang/String;

    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public getNicknames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->nicknames:[Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->note:Ljava/lang/String;

    return-object v0
.end method

.method public getOrg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->org:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->phoneTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public getPronunciation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->pronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/client/result/AddressBookParsedResult;->urls:[Ljava/lang/String;

    return-object v0
.end method
