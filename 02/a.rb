# frozen_string_literal: true

class Bag
  def self.build(array)
    array.each_with_object(new) { |i, b| b << i }
  end

  def initialize
    @h = Hash.new{ 0 }
  end

  def <<(item)
    @h[item] += 1
    self
  end

  def [](item)
    @h[item]
  end

  def inspect
    @h.inspect
  end

  def item_with_count?(n)
    @h.value?(n)
  end
end

checksum =
  DATA
  .map { |line| Bag.build(line.chomp.chars) }
  .each_with_object(Hash.new { 0 }) { |bag, counter|
    counter[2] += 1 if bag.item_with_count?(2)
    counter[3] += 1 if bag.item_with_count?(3)
  }
  .values
  .inject(:*)

puts checksum

__END__
oeambtcgjqnzhgkdylfapoiusr
oewmbtcxjqnzhgvdyltapvqusr
oewmbtchjqnzigkdylfapviuse
oeimbucxjqnzhgkdyyfapviusr
fewmbtcxjqndhgcdylfapviusr
oevgbtccjqnzhgkdylfapviusr
oewmbtcxjqnzhnkdylmapvpusr
oewmbtcxjqnzhxkdyldapvirsr
oewmutccjqnzngkdylfapviusr
oewmbtcxbqnzhgkdsliapviusr
ozwmbtfxjqnzcgkdylfapviusr
oewmbtdxjqnzhgkdypfapsiusr
oeylbtcxjqnzhgyyylfapviusr
oewmbtcxjqnzhgkdrlfakuiusr
oewmbtcujqnxhgkdylfadviusr
oewmbtcxlqpzhgkdylfaaviusr
oewmztcxjqnzhgkdylfqpliusr
oeembtcxjqnzhgkdtlmapviusr
onwmbtcxjqnqhgkdylfapdiusr
oewmbtcxnqnzhgkdylfapsbusr
oeoibtjxjqnzhgkdylfapviusr
oxwmbtcxjqnzhgkdylfapcipsr
oewmbtoxbqnzhgzdylfapviusr
okwubtcxjqnzhgkdylfapiiusr
oewmbtcxjqnzhgodylfapnicsr
oewmitcxjqnzhgkdylfaphlusr
oewmbtaxjqnzhgkhylfapveusr
oewmftcbjqnzhgkdylfapviurr
oewmbtcujqnzbgkdylfapliusr
oeevbtcxjqnzhgkdylfapniusr
oewmbtcxjqnvhgkdylfapnpusr
oewabtcxjqnzhgddylfapviust
oewmbtyxjqnzhgkdvlfapvinsr
jewmbtcxjonzhzkdylfapviusr
oewmbrcxjqnzxgkdylfapoiusr
dewmbtmxjqnzhgkdyvfapviusr
oewmbtctjqnzhgkdmlfapvihsr
oewmbjcxjqnzhgvdylfapviurr
oewmbtcxjqnzhgcdxlfapvfusr
oewmbucxjqnzhgkdyltapvifsr
gewmbtcejqezhgkdylfapviusr
oewebtcxjznzhgkdylfapvhusr
oewmjtcxjqnzhgkdycfakviusr
oewmbtcxjtnvhgkdylfabviusr
oewmbtcxjqnthgkgclfapviusr
hewmbtcxjqnzhgkdwlfapziusr
oewmbtcxjqnzhgkdylfqpviysf
oewmbtcxjvnzhgmdylfapviuse
oewmbtcxjqnphgkdymzapviusr
oewmbtcxjqnzwmkdylfapvbusr
oewmbthxjqnzhgkdylfatvilsr
oewmbtcxaznzhgkhylfapviusr
zewmbscxjqnzhgkdylfatviusr
oewmbecyaqnzhgkdylfapviusr
oewmbtnxjqnzhekxylfapviusr
oewmbtcxjqczhgkdyltnpviusr
yewmbecxjnnzhgkdylfapviusr
oewmbocxjqnzhgkyylfapviusv
oewmxtcxjqnzhgkkylfspviusr
oiwmbtcxjqnzhgkdydfapvgusr
oewmbtcxjqnzngydylfwpviusr
oewmctcxjqnzhgkdelfapviasr
oewmbtcxjqnzhgxdwmfapviusr
oewmntcxjqnzhgkdylfamviusw
oewmatcxjqbzhgkdylfapvhusr
oewmbtcxjqnqhmkdyluapviusr
opwmbtcxjqnzhgkdywfapvilsr
omwmbtcxjqnlhgkdylyapviusr
oewmltcxoqnzhgkdylfapvfusr
oewmbtcxjqtzhgkdyyoapviusr
oewmbtcxjqnzhrkdzlffpviusr
oewmbtqxyqnzhgkdylfalviusr
oeuzbtcxlqnzhgkdylfapviusr
oewmbtcxjqnzhtxdylflpviusr
oewmdtfxjqnzhgkdylfapviufr
ojwmbtcxjqnzhgkdylfypviqsr
oewmbtcxjqnzhgkdylfapvivuf
oewmjtcsjqnzxgkdylfapviusr
ohembtcxjqnzhnkdylfapviusr
oewmptcajqnzhgkdylfapviusd
oewmbtcxjcnwhgkbylfapviusr
oewmbtcxjqnzhgddnlfapvqusr
oewmbtcfjqnzhgkdypfapvzusr
oewdbtccjqnzhgfdylfapviusr
oewmbtcxjpnzhgkdplfaqviusr
oepmbhcxjqnzhgkdylfaaviusr
oewmbtcwjqxzhgkwylfapviusr
oewmatcxjqnchgkdylfapvifsr
omwmbncxjqnzhgkdylfapviuyr
sewmbsckjqnzhgkdylfapviusr
oewubtcxjqnzhgkdyluapvausr
ohwmbtcxqqhzhgkdylfapviusr
oewmbtcxjqnzhgkpylfapnissr
eewmbccxjqnzhgkdylbapviusr
oewmitcyjqnzhgkdylkapviusr
oewmbtcxjvnzhgkdyjfvpviusr
oewmbtcxjqmzhgkdyefagviusr
oewmbtcvjqnzhgkdylpapviufr
oewmbtcxjrnkhgkdylfapsiusr
oewmbtcxjqnzygkdylfaxvipsr
oexmbtcxjqczhgkdyloapviusr
oewmbtcxjqnlhtkdylfapvmusr
oewmbtcxdqjzdgkdylfapviusr
oewmbtclgqnzhgkdylfabviusr
oewmbtvfjqnzhgkdylfapviulr
oewmbtcxjqnzhgkdyllarvijsr
oewmbtyxjqnzhgpdylxapviusr
oeylbtcxjqnzhgkyylfapviusr
oewmbtctjqnzhjkdylfapviulr
oermatcxjqnzhgkdylzapviusr
oewmbtcxjqnztgkdzlfapviutr
oewlbtcxjqnztgkvylfapviusr
oewmbtcxjqzvhgkdylfapviusk
oewmbtcxjqnzmgkdyldapvilsr
felmbtcxjqnzhgkdylfapviusl
oewmbtcxjgnzhgkjylfaeviusr
ovwmbtcxjqpzhgkdylfapvizsr
eewmbtcpjqnzhgkdylfapvijsr
oewmbzcxjqnzhgkdylfaeviutr
tewmbtcljqhzhgkdylfapviusr
oewmbtcujqnzhgkdnliapviusr
oewmbtcljqnzhskdylfapvgusr
oewmbtchjqnzhgkdylmapviuse
oewmbtcxjqnzbgkdylfaiviurr
oewmbtcxjqnzhkkdyloapsiusr
oewjbtcxjqnhhgkdylfapjiusr
odwmbtcnjqnzhgkdylfapvicsr
oewmbccxjqrzwgkdylfapviusr
kewmbtcvjqnzhgkdylaapviusr
okwmbtcxjqnzhgkdylfspvausr
oewmbtcxjynzhgkdyafapviusw
oewmbtcxjqnzhgwdyleayviusr
oewmbtcxjqnzhgkdylfapviicl
oewmbtcxjqnzhgkdyltaeziusr
oewmbtcxrqnzhgkdylftpvizsr
oewsrtcgjqnzhgkdylfapviusr
oewmbtsxgqnzhgxdylfapviusr
oewmbtcxjanzhgtdylfapeiusr
oewybtcgjqnzhgkdylfapviust
ojwmbncxjqnzhgkdylfapgiusr
ocgebtcxjqnzhgkdylfapviusr
oejcbtcxjqnzhgkvylfapviusr
oswmbtcxjqnkhgkdylfapviusb
oewdbtcxjqnzdgkdylfypviusr
oawmutcxjqnzhgkddlfapviusr
oewzbtcxyqnzhgkdylfapviusy
zewmbtcxjqnzkgkdylwapviusr
aewmbtkxjqnzhgkdylfapviuer
oewmbtcxwqnzhgkdyofapviuur
oewmbtcxjqnzggkdylfapanusr
oewmstcxuqnzhgkdylzapviusr
zewmbtcxjqozhgkdelfapviusr
oewzbtcxjqnahgkdyllapviusr
fewmatcxjqnghgkdylfapviusr
oewmbtcxjqnzhgkdylfapviyqb
oewwbtcxjqnzhgkdyljapviqsr
oewmbtbxjqnzhgkxylfapviesr
oewmbtcbjqnphgkdylfapviysr
oewabtcxyqnzhgkdylfabviusr
oewmbtcxhknzhgkdylfapviusd
ozwmbtcljqnzhgkdylfapviksr
tewmbtcxjqnzhgkdylfaxvqusr
oewmbtcxrqnzhgkdytfapvrusr
ohwmbtcxjcnzhgkdyifapviusr
oewmbpcxjqnzhwkdylfaphiusr
oedmbtcxjqnzhgnbylfapviusr
oewmbocxjqnehgkdylfapvbusr
oeymbtcxjqezegkdylfapviusr
oewmbtcxjqnzhgkdllferviusr
oewmbtcxjqnzhgkwmlfawviusr
oewmbtcxienzhgkdyzfapviusr
mewmbtcxjqnzhqkdylfapviwsr
oewmbtcxjqnztgkmylfapvdusr
ouwmbtcxjqnzhokdylpapviusr
oewmctcxjqhzhgmdylfapviusr
oewmbtcyjqnzhmkdylfarviusr
oewmbtcxjqnzhgkdpnfzpviusr
oewmptcxjqnzhgkdylkapviulr
nefmbtcxsqnzhgkdylfapviusr
oewmbtcxwqnzhgkdilfapvizsr
eewmbtcxjqwzhghdylfapviusr
oewmbtixmqnzhgkjylfapviusr
okwmbtcdzqnzhgkdylfapviusr
oewmbtxxjrnzigkdylfapviusr
oewmdycxjqnzhekdylfapviusr
oewmutcxjqnzhgkdylfapsiuqr
oewmbacxjqnzrgkdrlfapviusr
oewmbtcxpqnzhmkdylfapciusr
oewabtcxjqnzhgkdyrcapviusr
oswmbtcxjqnzhgkdrxfapviusr
gewmbtcnjqnzhgkdylvapviusr
newmbtcxjwnzfgkdylfapviusr
lewmbtcxjqnzhgkdylfaptiujr
oewwbtcxjqndhgkdylfapiiusr
oewmbtcxjqnzhggdylfapvqmsr
lewmbtcxjqnzhgkhllfapviusr
oewmbtocjqnzhgkdylfapvhusr
oedmbtcxjqnzhgkdyhfapviusb
oewmbtcxjqnzhgkdylfajvaosr
zewmbtcxjqnzhgkdylfapvsssr
oewmbthxjqnzhskdylfapviuqr
yewmrtcvjqnzhgkdylfapviusr
oewmbtctjqnzhgkdylfabvhusr
oesmstcxjqnzhgkdylfapqiusr
oewmbtcxjqnzzgkdylfopiiusr
otwmbtzxjqnzhgkdylfaxviusr
ouwmbxcxjqnzhgkdylfapvnusr
oewmbtcxjqezhgedylfapvsusr
oesmhtcsjqnzhgkdylfapviusr
oewdbtcxjqnzhgkdilfapvifsr
oewmbtcxjqnzhgudynfamviusr
qewhbtcxjqnzhgkdyxfapviusr
oewmbzcxjqtzhgkdylfapvitsr
oewmbtccjqzzhgkaylfapviusr
jewmbtcxmqnzhlkdylfapviusr
oewmbtcxjqbzhgkdnlfapviusp
oeimbtcdjqnzhgkdylfapviuer
oewtbtcxjqnihgkdylfahviusr
oewmbtcxhqnzhgkdylfapdiudr
oefmbtcxjqyshgkdylfapviusr
oewmbtcxjqnzhgkfglfapviusx
oecmbocxjqnzhgkdmlfapviusr
oewmbtcxjqnzhghdylfavviuhr
oewmbmcxiqnzhgkpylfapviusr
oewmbtcnjqnzhgkrylfanviusr
oewmbocxjqnzhzkdllfapviusr
eewmbtckjqnzhgkdylfapviusg
oewmbtcrjqqzhgkdylfapvigsr
oewmbtcxjqazhgfdylfapjiusr
oetmbtcxjqnzhgldylfapviqsr
oewbbtcxjqnzlgkdylfapviuse
oewmbtcxjqnzhglbolfapviusr
oewmbtcxjqnzcgkdylfapviuhy
oelmbtcxjqfzhgkdylaapviusr
oojmbycxjqnzhgkdylfapviusr
oewmbtrxjqnrhgkdylfapniusr
oewmbtcxjqnzhgkyyhfapviuso
oewabtcxjqnzhskdylfapviusx
oewmbtcrjqnmhgkdylfapvnusr
oewmbtcxjqrzhgkdylfapvpuss
oewmbtcxhqnzwgkddlfapviusr
kewmbtcxjqnzhgkyylfajviusr
oswmbtcxjqnzhgkdjlfapviuss
onwmbtcxjqnchgkdylfapvpusr
oeymbtcxjqnxhikdylfapviusr
oewmblcdjqnzhgkdylfapviysr
oewmbtcxeqczhgudylfapviusr
oewmbpgxjqnzhgkdylfapfiusr
ohwmwtcxjqnzhgkdylftpviusr
zebmbtuxjqnzhgkdylfapviusr
