module StatsHelper
  def pie_chart_for_solutions
    count = {}
    Solution.all.each do |solution|

      count[kabupaten.penduduks] ||= 0
      count[kabupaten.penduduks] += 1

      count[kelurahan.penduduks] ||= 0
      count[kelurahan.penduduks] += 1
      
      count[kecamatan.penduduks] ||= 0
      count[kecamatan.penduduks] += 1

      count[agama.penduduks] ||= 0
      count[agama.penduduks] += 1

      count[golongan_darah.penduduks] ||= 0
      count[golongan_darah.penduduks] += 1

      count[penghasilan.penduduks] ||= 0
      count[penghasilan.penduduks] += 1

      count[pekerjaan.penduduks] ||= 0
      count[pekerjaan.penduduks] += 1

      count[pendidikan.penduduks] ||= 0
      count[pendidikan.penduduks] += 1
    end

    total = Solution.count
    data = count.collect { |penduduk, number| number }
    labels = count.collect do |penduduk, number|
     "#{penduduk.nama} (#{total == 0 ? 0 : (100.0 * number / total).round}%)"
    end

    Gchart.pie(:data => data, :labels => labels, :size => '695x380',
               :theme => :thirty7signals)
  end
end